import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../../widgets/rectangle_container.dart';
import '../../../../../../core/constance/app_constance.dart';

class HomeBannerComponent extends StatelessWidget {
  const HomeBannerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22.h),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 12.w),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.sp),
        ),
      ),
      child: RectangleContainer(
          radius: 20,
          height: 100,
          width: 367,
          containerColor: XColors.primary,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<AuthBloc, AuthState>(
                      buildWhen: (previous, current) {
                        if (current.runtimeType ==
                            const AuthState.userProfileFetched().runtimeType) {
                          return true;
                        }
                        return false;
                      },
                      builder: (context, state) {
                        return state.maybeMap(
                          orElse: () => const Offstage(),
                          userProfileFetched: (value) => Text(
                            '${value.userProfile!.user!.name} اهلا',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 14.w),
                    Text(
                      'المنافسة اقرب اليك',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
