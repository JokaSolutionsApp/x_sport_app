import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../main.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/buttons/outlined_button.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/buttons/underline_button.dart';
import '../../../../widgets/text_fields/textfield_widget.dart';
import '../../components/intrinsic_height_component.dart';
import '../bloc/auth_bloc.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  getUserLocation() async {
    await registerStream.updateLocation();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // context.read<AuthBloc>().add(const AuthEvent.googleLogin());
    return IntrinsicHeightComponent(
      title: 'تسجيل الدخول',
      child: SizedBox(
        width: 329.w,
        child: Column(
          children: [
            TextFieldWidget(
              labelText: 'الرقم / البريد الالكتروني',
              controller: email,
              keyboardType: TextInputType.emailAddress,
              textStream: signInStream.emailPhone,
              onChanged: signInStream.changeEmailPhone,
            ),
            TextFieldWidget(
              labelText: 'كلمة المرور',
              controller: password,
              keyboardType: TextInputType.name,
              textStream: signInStream.password,
              onChanged: signInStream.changePassword,
              isObscureText: true,
            ),
            SizedBox(height: 30.h),
            StreamBuilder(
                stream: signInStream.loginValid,
                builder: (context, snapshot) {
                  final isButtonEnabled = snapshot.data ?? false;
                  return SubmitButton(
                    isButtonEnabled: isButtonEnabled,
                    fillColor: isButtonEnabled ? XColors.primary : Colors.grey,
                    textColor: Colors.white,
                    text: 'تسجيل الدخول',
                    onPressed: () {
                      // EasyLoadingInit.startLoading();
                      // Future.delayed(Duration(seconds: 2), () {
                      //   EasyLoading.dismiss();
                      //   Navigator.of(navigatorKey.currentContext!).push(
                      //     MaterialPageRoute(builder: (context) => MainPage()),
                      //   );
                      // });
                      context.read<AuthBloc>().add(const AuthEvent.login());
                    },
                  );
                }),
            SizedBox(height: 40.h),
            SizedBox(
              width: 329.w,
              height: 130.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinButton(
                    isButtonEnabled: true,
                    fillColor: XColors.primary,
                    textColor: XColors.Background_Color1,
                    image: AssetsManager.icons.facebook,
                    text: 'تسجيل الدخول عبر فيسبوك',
                    onPressed: () {},
                  ),
                  OutlinButton(
                    isButtonEnabled: true,
                    fillColor: XColors.primary,
                    textColor: XColors.Background_Color1,
                    image: AssetsManager.icons.google,
                    text: 'تسجيل الدخول عبر جوجل',
                    onPressed: () {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.googleLogin());
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.h),
            UnderlinButton(
              buttonText: 'ليس لديك حساب؟! سجل الان!',
              onPressed: () {
                Navigator.of(navigatorKey.currentContext!).push(
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
