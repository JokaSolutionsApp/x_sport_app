import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/controllers/fileds_bloc.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/app/features/auth/presentation/widgets/auth_header.dart';
import 'package:x_sport/app/features/auth/presentation/widgets/more_sign_in_options.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';
import 'package:x_sport/app/widgets/text_fields/no_border_textfield_widget.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/localization/locale_keys.g.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

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
  late TextEditingController phone;
  late ScrollController scrollController;
  late FocusNode nameFocusNode;
  late FocusNode passwordFocusNode;
  late FocusNode emailFocusNode;
  late FocusNode phoneFocusNode;

  var isChecked = ValueNotifier(false);
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    scrollController = ScrollController();
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    nameFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    emailFocusNode = FocusNode();
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
    phone.dispose();
    nameFocusNode.dispose();
    passwordFocusNode.dispose();
    emailFocusNode.dispose();
    phoneFocusNode.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final value = MediaQuery.of(context).viewInsets.bottom;
    if (value > 0) {
      if (passwordFocusNode.hasFocus) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent / 2.7,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
      if (phoneFocusNode.hasFocus) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent / 4.5,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 50.h,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: AssetsManager.icons.arBackArrow.image()),
          )
        ],
      ),
      body: SizedBox(
        height: 1.sh,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: AuthHeader(
                mainTitle: LocaleKeys.join.tr(),
                title: LocaleKeys.create_your_id.tr(),
                subtitle: LocaleKeys.register_sub_title.tr(),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 372.w,
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom / 1.7.h),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          NoBorderTextFieldWidget(
                            focusNode: nameFocusNode,
                            labelText: LocaleKeys.first_name_and_last_name.tr(),
                            controller: name,
                            keyboardType: TextInputType.name,
                            textStream: registerStream.name,
                            onChanged: registerStream.changeName,
                            hintText: 'Basheer turkmany',
                          ),
                          NoBorderTextFieldWidget(
                            focusNode: emailFocusNode,
                            labelText: LocaleKeys.email.tr(),
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            textStream: registerStream.email,
                            onChanged: registerStream.changeEmail,
                            hintText: 'example@gmail.com',
                          ),
                          NoBorderTextFieldWidget(
                            focusNode: phoneFocusNode,
                            labelText: LocaleKeys.mobile_number.tr(),
                            controller: phone,
                            keyboardType: TextInputType.number,
                            textStream: registerStream.phone,
                            onChanged: registerStream.changePhone,
                            hintText: '935648050',
                          ),
                          NoBorderTextFieldWidget(
                            focusNode: passwordFocusNode,
                            labelText: LocaleKeys.password.tr(),
                            controller: password,
                            keyboardType: TextInputType.visiblePassword,
                            textStream: registerStream.password,
                            onChanged: registerStream.changePassword,
                            isObscureText: true,
                            hintText: '****************',
                          ),
                          StreamBuilder(
                            stream: registerStream.registerIsValid,
                            builder: (context, snapshot) {
                              final isButtonEnabled = snapshot.data ?? false;
                              return SubmitButton(
                                isButtonEnabled: true,
                                radius: 10.sp,
                                fillColor: isButtonEnabled
                                    ? XColors.primary
                                    : XColors.inactive_button,
                                textColor: Colors.white,
                                text: LocaleKeys.create.tr(),
                                textSize: 22,
                                fontWeight: FontWeight.w600,
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
                    ],
                  ),
                ),
              ),
            ),
            const MoreSignInOptions(),
          ],
        ),
      ),
    );
  }
}
