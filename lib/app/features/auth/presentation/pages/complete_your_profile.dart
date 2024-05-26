import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/widgets/text_fields/no_border_textfield_widget.dart';
import 'package:x_sport/core/localization/locale_keys.g.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/buttons/submit_button.dart';

class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({super.key});

  @override
  State<CompleteProfilePage> createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController phone;
  late FocusNode nameFocusNode;
  late FocusNode phoneFocusNode;

  var isChecked = ValueNotifier(false);
  @override
  void initState() {
    name = TextEditingController();
    phone = TextEditingController();
    nameFocusNode = FocusNode();
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
    name.dispose();
    phone.dispose();
    nameFocusNode.dispose();
    phoneFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 29.w),
          child: SizedBox(
            height: 1.sh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 62.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Complete your profile',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: XColors.black,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AssetsManager.icons.hand.image(),
                          SizedBox(width: 6.w),
                          Text(
                            'help us to save your preferences inside the app',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: XColors.black,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 348.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NoBorderTextFieldWidget(
                        focusNode: nameFocusNode,
                        labelText: LocaleKeys.first_name_and_last_name.tr(),
                        controller: name,
                        keyboardType: TextInputType.emailAddress,
                        textStream: signInStream.name,
                        onChanged: signInStream.changeName,
                        hintText: 'basheer',
                      ),
                      NoBorderTextFieldWidget(
                        bttomPadding: 10.h,
                        focusNode: phoneFocusNode,
                        labelText: LocaleKeys.mobile_number.tr(),
                        controller: phone,
                        keyboardType: TextInputType.phone,
                        textStream: signInStream.phone,
                        onChanged: signInStream.changePhone,
                        hintText: '935648050',
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: StreamBuilder(
                    stream: signInStream.loginValid,
                    builder: (context, snapshot) {
                      final isButtonEnabled = snapshot.data ?? false;
                      return SubmitButton(
                        isButtonEnabled: isButtonEnabled,
                        radius: 10.sp,
                        fillColor: isButtonEnabled
                            ? XColors.primary
                            : XColors.inactive_button,
                        textColor: Colors.white,
                        text: LocaleKeys.next.tr(),
                        textSize: 22,
                        fontWeight: FontWeight.w600,
                        onPressed: () {
                          if (isButtonEnabled) {}
                        },
                      );
                    },
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
