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

class _LoginPageState extends State<LoginPage> with WidgetsBindingObserver {
  late TextEditingController email;
  late TextEditingController password;
  late ScrollController scrollController;
  late FocusNode passwordFocusNode;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    scrollController = ScrollController();
    email = TextEditingController();
    password = TextEditingController();
    passwordFocusNode = FocusNode();

    getUserLocation();
    super.initState();
  }

  getUserLocation() async {
    await registerStream.updateLocation();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    email.dispose();
    password.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final value = MediaQuery.of(context).viewInsets.bottom;
    print('Keyboard height: $value');
    if (value > 0 && passwordFocusNode.hasFocus) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeightComponent(
      title: 'تسجيل الدخول',
      child: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom / 1.8),
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
                  focusNode: passwordFocusNode,
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
                        fillColor:
                            isButtonEnabled ? XColors.primary : Colors.grey,
                        textColor: Colors.white,
                        text: 'تسجيل الدخول',
                        onPressed: () {
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
                      // OutlinButton(
                      //   isButtonEnabled: true,
                      //   fillColor: XColors.primary,
                      //   textColor: XColors.Background_Color1,
                      //   image: AssetsManager.icons.facebook,
                      //   text: 'تسجيل الدخول عبر فيسبوك',
                      //   onPressed: () {},
                      // ),
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
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
