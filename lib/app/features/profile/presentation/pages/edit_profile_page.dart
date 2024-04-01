import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/constance/local_data.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../main.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/buttons/edit_button.dart';
import '../../../../widgets/text_fields/no_border_textfield_widget.dart';
import '../../../auth/data/datasource/params/auth_params.dart';
import '../../../auth/domain/enitites/favorite_sport_entity.dart';
import '../../../auth/domain/enitites/user_entity.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../components/edit_profile_components/edit_image_component.dart';

class EditProfilePage extends StatefulWidget {
  final UserEntity? user;
  final List<FavoriteSportEntity>? favoriteSports;
  const EditProfilePage({super.key, this.user, this.favoriteSports});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class User {}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();

  String imageType = '';
  List<int> imageBytes = [];

  List<int> selectedIds = [];

  String gender = 'ذكر';

  getUserLocation() async {
    await editProfileStream.updateLocation();
  }

  @override
  void initState() {
    getUserLocation();
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
              context.read<AuthBloc>().add(AuthEvent.editUserProfile(
                  params: EditUserProfileParams(
                      name: name.text,
                      gender: 'ذكر',
                      phone: phone.text,
                      sportIds: selectedIds,
                      lat: editProfileStream.latValue,
                      long: editProfileStream.longeValue)));
            },
            icon: Icon(
              Icons.done,
              size: 36.sp,
              color: XColors.primary,
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
                    Navigator.of(navigatorKey.currentContext!).pop();
                  },
                  icon: Icon(
                    Icons.close,
                    size: 36.sp,
                  ))
            ],
          )
        ],
      ),
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
                        onPressed: () {
                          // showDialog(
                          //     context: context,
                          //     builder: (BuildContext ctx) {
                          //       return EditSportAlertDialog(
                          //         favoriteSports: sportsIds,
                          //         title: 'ازالة لعبة',
                          //         subtitle:
                          //             'تنويه: بازالتك لاحد الالعاب سيختفي المحتوى المرتبط بتلك اللعبة خلال تصفحك التطبيق',
                          //         getSportsIds: (List<SportEntity> ids) {
                          //           setState(() {
                          //             sportsIds = ids;
                          //             selectedIds =
                          //                 ids.map((e) => e.sportId).toList();
                          //           });
                          //         },
                          //       );
                          //     });
                        },
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
                        width: 0.62.sw,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemExtent: 80.w,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 4.w),
                                  alignment: Alignment.center,
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
                                    'اسم الرياضة',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                );
                              }),
                        ),
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
                        onPressed: () {
                          // showDialog(
                          //   context: context,
                          //   builder: (BuildContext ctx) {
                          //     return EditGenderAlertDialog(
                          //       gender: updateGender,
                          //       getGender: (newValue) {
                          //         setState(() {
                          //           updateGender = newValue;
                          //         });
                          //       },
                          //     );
                          //   },
                          // );
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
                        'ذكر',
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
                        color: XColors.primary,
                        fontSize: 16.sp,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size(50.w, 30.h),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.deleteUserProfile());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'حذف الحساب',
                          style: TextStyle(
                            color: const Color(0xFFF44336),
                            fontSize: 19.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 2.h,
                          ),
                        ),
                        AssetsManager.icons.delete.image(height: 15.h),
                      ],
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
