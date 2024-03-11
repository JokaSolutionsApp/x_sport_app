import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/local_data.dart';
import 'package:x_sport/app/features/profile/presentation/components/edit_profile_components/edit_image_component.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/buttons/edit_button.dart';
import '../../../../widgets/text_fields/no_border_textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  final User? user;
  final List<String>? favoriteSports;
  const EditProfilePage(
      {super.key, required this.user, required this.favoriteSports});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class User {}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  String imageType = '';
  List<int> imageBytes = [];
  List<int> selectedSport = [];
  String gender = 'ذكر';
  getUserLocation() async {
    await editProfileStream.updateLocation();
  }

  @override
  void initState() {
    // selectedSport = widget.favoriteSports!.map((e) => e.sportId).toList();
    super.initState();
  }

  final localFavoritSports = LocalData.favoritSports;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.done,
                size: 36.sp,
                color: XColors.Submit_Button_Color,
              )),
          actions: [
            Row(
              children: [
                Text(
                  'تعديل الملف الشخصي',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      size: 36.sp,
                    ))
              ],
            )
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 0.96.sw,
            child: Column(
              children: [
                EditImageComponent(getImage: (bytes, type) {
                  imageBytes = bytes;
                  imageType = type;
                }),
                NoBorderTextFieldWidget(
                  labelText: 'الاسم',
                  controller: name,
                  keyboardType: TextInputType.emailAddress,
                  textStream: editProfileStream.name,
                  onChanged: editProfileStream.changeName,
                  hintText: 'الاسم',
                  // hintText: widget.user!.name,
                ),
                NoBorderTextFieldWidget(
                  labelText: 'رقم الموبايل',
                  controller: phone,
                  keyboardType: TextInputType.phone,
                  textStream: editProfileStream.phone,
                  onChanged: editProfileStream.changePhone,
                  hintText: 'رقم الموبايل',
                  // hintText: widget.user!.phone,
                ),
                EditButton(
                  labelText: 'الموقع الجغرافي',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50.w, 30.h),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: () {
                          getUserLocation();
                        },
                        child: Text(
                          'تغيير',
                          style: TextStyle(
                            color: const Color(0xFFF44336),
                            fontSize: 16.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'الموقع الجغرافي',
                        style: TextStyle(
                            color: XColors.Background_Color1,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                EditButton(
                  labelText: 'الالعاب',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50.w, 30.h),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: null,
                        child: Text(
                          'حذف او اضافة',
                          style: TextStyle(
                            color: const Color(0xFFF44336),
                            fontSize: 16.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 38.h,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: localFavoritSports.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(left: 4.w),
                                alignment: Alignment.center,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  color: XColors.Background_Color1,
                                  borderRadius: BorderRadius.circular(10.sp),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                child: Text(
                                  textAlign: TextAlign.end,
                                  localFavoritSports[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
                EditButton(
                  labelText: 'الجنس',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50.w, 30.h),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: null,
                        child: Text(
                          'تغيير',
                          style: TextStyle(
                            color: const Color(0xFFF44336),
                            fontSize: 16.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        gender,
                        style: TextStyle(
                            color: XColors.Background_Color1,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 0.92.sw,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50.w, 30.h),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    onPressed: null,
                    child: Text(
                      'ترقية حسابك (نسخة بريميوم)',
                      style: TextStyle(
                        color: XColors.Submit_Button_Color,
                        fontSize: 16.sp,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
