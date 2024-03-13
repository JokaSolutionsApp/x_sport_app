import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../components/intrinsic_height_component.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../components/register_components/gender_component.dart';
import '../bloc/auth_bloc.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/text_fields/textfield_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();

  TextEditingController phone = TextEditingController();

  var isChecked = ValueNotifier(false);
  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  getUserLocation() async {
    await registerStream.updateLocation();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeightComponent(
      title: 'انشاء الحساب',
      child: SizedBox(
        width: 329.w,
        height: 1.sh,
        child: SingleChildScrollView(
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
                labelText: 'كلمة المرور',
                controller: password,
                keyboardType: TextInputType.name,
                textStream: registerStream.password,
                onChanged: registerStream.changePassword,
                isObscureText: true,
              ),
              TextFieldWidget(
                labelText: 'تأكيد كلمة المرور',
                controller: confirmPassword,
                keyboardType: TextInputType.emailAddress,
                textStream: registerStream.confPassword,
                onChanged: registerStream.changeConfPassword,
                isObscureText: true,
              ),
              TextFieldWidget(
                labelText: 'رقم الموبايل',
                controller: phone,
                keyboardType: TextInputType.number,
                textStream: registerStream.phone,
                onChanged: registerStream.changePhone,
              ),
              Container(
                height: 50.h,
                width: 0.83.sw,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 10),
                margin: EdgeInsets.only(top: 34.0.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.sp),
                    border:
                        Border.all(color: XColors.Field_Color1, width: 0.5.w)),
                child: const Text('تفعيل الموقع الجغرافي'),
              ),
              SizedBox(height: 30.h),
              GenderComponent(
                getGender: (newValue) {
                  registerStream.changeGender(newValue);
                },
              ),
              SizedBox(height: 10.h),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  textAlign: TextAlign.end,
                  'اوافق على شروط الاستخدام والخصوصية',
                  style: TextStyle(
                      color: XColors.Outline_Button_Color,
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
                            onChanged: (value) {
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
                  const isButtonEnabled = true;
                  return SubmitButton(
                    isButtonEnabled: isButtonEnabled,
                    fillColor: isButtonEnabled
                        ? XColors.Submit_Button_Color
                        : Colors.grey,
                    textColor: Colors.white,
                    text: 'انشاء حساب',
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.register());
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
