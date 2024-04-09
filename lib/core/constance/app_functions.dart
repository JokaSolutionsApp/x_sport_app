import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:x_sport/app/features/profile/presentation/components/edit_profile_components/status_dialog.dart';

import 'app_constance.dart';

class EasyLoadingInit {
  static void configLoading() {
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.black
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = XColors.Background_Color1
      ..backgroundColor = Colors.white
      ..indicatorColor = XColors.Background_Color1
      ..textColor = XColors.Background_Color1
      ..userInteractions = false
      ..dismissOnTap = false;
  }

  static void startLoading() async {
    await EasyLoading.show(
      status: '...جاري التحميل',
    );
  }
}

class Dialogs {
  static changeProfileDataDialog(
      {required BuildContext context,
      required bool isSuccess,
      String error = ''}) {
    return showDialog(
      context: context,
      builder: (context) => StatusDialog(
        title: isSuccess ? 'تم تغيير كلمة المرور بنجاح' : 'حدث خطا',
        content: error,
        isSuccess: isSuccess,
      ),
    );
  }
}
