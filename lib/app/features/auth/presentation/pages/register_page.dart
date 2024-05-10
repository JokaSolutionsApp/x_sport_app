import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/text_fields/textfield_widget.dart';
import '../../components/intrinsic_height_component.dart';
import '../../components/register_components/gender_component.dart';
import '../bloc/auth_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with WidgetsBindingObserver {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController phone;
  late ScrollController scrollController;
  late FocusNode passwordFocusNode;
  late FocusNode passwordConfirmFocusNode;
  late FocusNode phoneFocusNode;

  var isChecked = ValueNotifier(false);
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    scrollController = ScrollController();
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    phone = TextEditingController();
    passwordFocusNode = FocusNode();
    passwordConfirmFocusNode = FocusNode();
    phoneFocusNode = FocusNode();

    getUserLocation();
    super.initState();
  }

  getUserLocation() async {
    await registerStream.updateLocation();
  }

  @override
  dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    name.dispose();
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    phone.dispose();
    passwordFocusNode.dispose();
    passwordConfirmFocusNode.dispose();
    phoneFocusNode.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final value = MediaQuery.of(context).viewInsets.bottom;
    if (value > 0 &&
        (passwordFocusNode.hasFocus ||
            passwordConfirmFocusNode.hasFocus ||
            phoneFocusNode.hasFocus)) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent / 2.7,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeightComponent(
      title: 'انشاء الحساب',
      child: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            width: 329.w,
            height: 1.sh,
            child: Form(
              key: key,
              child: Column(
                children: [
                  TextFieldWidget(
                    labelText: 'الاسم الكامل',
                    controller: name,
                    keyboardType: TextInputType.emailAddress,
                    textStream: registerStream.name,
                    onChanged: registerStream.changeName,
                  ),
                  TextFieldWidget(
                    labelText: 'البريد الالكتروني',
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    textStream: registerStream.email,
                    onChanged: registerStream.changeEmail,
                  ),
                  TextFieldWidget(
                    focusNode: passwordFocusNode,
                    labelText: 'كلمة المرور',
                    controller: password,
                    keyboardType: TextInputType.name,
                    textStream: registerStream.password,
                    onChanged: registerStream.changePassword,
                    isObscureText: true,
                  ),
                  TextFieldWidget(
                    focusNode: passwordConfirmFocusNode,
                    labelText: 'تأكيد كلمة المرور',
                    controller: confirmPassword,
                    keyboardType: TextInputType.emailAddress,
                    textStream: registerStream.confPassword,
                    onChanged: registerStream.changeConfPassword,
                    isObscureText: true,
                  ),
                  TextFieldWidget(
                    focusNode: phoneFocusNode,
                    labelText: 'رقم الموبايل',
                    controller: phone,
                    keyboardType: TextInputType.number,
                    textStream: registerStream.phone,
                    onChanged: registerStream.changePhone,
                  ),
                  InkWell(
                    onTap: () async {
                      getUserLocation();
                      await registerStream.updateLocation();
                    },
                    child: Container(
                      height: 50.h,
                      width: 0.83.sw,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 10),
                      margin: EdgeInsets.only(top: 34.0.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.sp),
                          border: Border.all(
                              color: XColors.Field_Color1, width: 0.5.w)),
                      child: const Text('تفعيل الموقع الجغرافي'),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GenderComponent(
                    getGender: (newValue) async {
                      registerStream.changeGender(newValue);
                    },
                  ),
                  SizedBox(height: 10.h),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      textAlign: TextAlign.end,
                      'اوافق على شروط الاستخدام والخصوصية',
                      style: TextStyle(
                          color: XColors.Outline_primary,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: ValueListenableBuilder(
                          valueListenable: isChecked,
                          builder: (context, value, child) {
                            return Transform.scale(
                              scale: 0.9.w,
                              child: Checkbox(
                                activeColor: XColors.Background_Color2,
                                value: isChecked.value,
                                onChanged: (value) async {
                                  isChecked.value = !isChecked.value;
                                  registerStream.changePrivacy(value!);
                                },
                              ),
                            );
                          }),
                    ),
                  ]),
                  SizedBox(height: 8.h),
                  StreamBuilder(
                    stream: registerStream.registerIsValid,
                    builder: (context, snapshot) {
                      final isButtonEnabled = snapshot.data ?? true;
                      return SubmitButton(
                        isButtonEnabled: true,
                        fillColor:
                            isButtonEnabled ? XColors.primary : Colors.grey,
                        textColor: Colors.white,
                        text: 'انشاء حساب',
                        onPressed: () {
                          if (isButtonEnabled) {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.register());
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
