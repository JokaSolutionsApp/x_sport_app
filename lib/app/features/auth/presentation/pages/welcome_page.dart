import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../domain/enitites/sport_entity.dart';
import '../bloc/auth_bloc.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../components/welcome_screen_components/image_picker_component.dart';
import '../../../../widgets/buttons/submit_button.dart';

class WelcomePage extends StatelessWidget {
  String imageType = '';
  List<int> imageBytes = [];

  WelcomePage({super.key});
  final List<SportEntity> sports = [];

  final List<int> selectedSports = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            XColors.Background_Color1,
            XColors.Background_Color2
          ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
          child: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.language_sharp,
                    color: Color(0xFFFFFFFF),
                  ),
                  onPressed: () {},
                  iconSize: 38.w,
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (prev, cur) {
          if (cur.runtimeType !=
              const AuthState.confirmEmailLoading().runtimeType) {
            return true;
          }
          return false;
        },
        builder: (context, state) => state.maybeMap(
          orElse: () => const Offstage(),
          confirmEmailLoading: (value) => const Offstage(),
          emailConfirmed: (value) {
            final sports = value.sports;
            final ValueNotifier<List<bool>> isSelectedList =
                ValueNotifier<List<bool>>(
                    List.generate(sports.length, (index) => false));
            return Container(
                alignment: Alignment.topCenter,
                height: 1.sh,
                width: 1.sw,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    XColors.Background_Color1,
                    XColors.Background_Color2
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                        top: 0.h,
                        child: AssetsManager.images.main.xSportLogo.image(
                          height: 220.h,
                          width: 220.w,
                        )),
                    Positioned(
                        top: 200.h,
                        width: 1.sw,
                        child: Column(
                          children: [
                            Text(
                              'اهلا بك!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'قم باكمال معلوماتك الشخصية كي تحقق افضل تجربة في اكس سبورت',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 30.h),
                            ImagePcikerComponent(
                              getImage: (bytes, type) {
                                imageBytes = bytes;
                                imageType = type;
                              },
                            ),
                            SizedBox(height: 30.h),
                            Text(
                              'اي رياضة تفضل ان تبدأبها؟!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'يمكنك اضافة  المزيد من النشاطات لاحقا!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 30.h),
                            SizedBox(
                                height: 120.h,
                                width: 360.w,
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 36.w,
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 14.0.w,
                                    mainAxisSpacing: 20.0.w,
                                  ),
                                  itemCount: sports.length,
                                  itemBuilder: (context, index) {
                                    return ValueListenableBuilder(
                                      valueListenable: isSelectedList,
                                      builder: (context, selectedList, child) {
                                        final isSelected = selectedList[index];

                                        return GestureDetector(
                                          onTap: () {
                                            final sportId =
                                                sports[index].sportId;

                                            if (selectedSports
                                                .contains(sportId)) {
                                              // If sportId is already in the list, remove it
                                              selectedSports.remove(sportId);
                                            } else {
                                              // If sportId is not in the list, add it
                                              selectedSports.add(sportId);
                                            }

                                            final List<bool> newList =
                                                List.from(selectedList);
                                            newList[index] = !isSelected;
                                            isSelectedList.value = newList;
                                            print(isSelectedList.value);
                                          },
                                          child: Container(
                                            width: 60.0.w,
                                            decoration: BoxDecoration(
                                              color: isSelected
                                                  ? Colors.white
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(18.sp),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.w),
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Icon(
                                                      Icons
                                                          .sports_tennis_outlined,
                                                      color: isSelected
                                                          ? XColors
                                                              .Background_Color1
                                                          : Colors.white,
                                                      size: 22.sp,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Text(
                                                      textAlign: TextAlign.end,
                                                      sports[index].name,
                                                      style: TextStyle(
                                                          color: isSelected
                                                              ? XColors
                                                                  .Background_Color1
                                                              : Colors.white,
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                )),
                            SizedBox(height: 20.h),
                            SubmitButton(
                              radius: 28,
                              isButtonEnabled: true,
                              fillColor: XColors.primary,
                              textColor: Colors.white,
                              text: 'ابدأ الان',
                              onPressed: () {
                                context.read<AuthBloc>().add(
                                    AuthEvent.completeRegistration(
                                        imageBytes: imageBytes,
                                        imageType: imageType,
                                        selectedSports: selectedSports));
                              },
                            ),
                          ],
                        ))
                  ],
                ));
          },
        ),
      ),
    );
  }
}
