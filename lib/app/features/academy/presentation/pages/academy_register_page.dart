import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/presentation/components/register_success_dialog.dart';
import 'package:x_sport/app/features/academy/presentation/components/text_form_field_widget.dart';

import '../../../../../core/constance/app_constance.dart';

class AcademyRegisterPage extends StatefulWidget {
  const AcademyRegisterPage({super.key});

  @override
  State<AcademyRegisterPage> createState() => _AcademyScreenState();
}

class _AcademyScreenState extends State<AcademyRegisterPage>
    with SingleTickerProviderStateMixin {
  List<String> languageList = ['رجال', 'شباب', 'ناشئين'];
  String selectedLanguage = '';
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 0.06.sh,
        title: const Text(
          'سجل الان',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: XColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 18.0,
          ),
          child: Column(
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: BoxDecoration(
                    color: XColors.white,
                    border: Border.all(
                      color: XColors.borderColor,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    hint: const Text('تحديد الفئة السنية'),
                    dropdownColor: XColors.white,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontSize: 16,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 17.w,
                        vertical: 17.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                      ),
                    ),
                    items: languageList
                        .map(
                          (item) => DropdownMenuItem<dynamic>(
                            value: item,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                item,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (item) => setState(
                      () {
                        selectedLanguage = item;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: BoxDecoration(
                    color: XColors.white,
                    border: Border.all(
                      color: XColors.borderColor,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    hint: const Text('البرنامج التدريبي'),
                    dropdownColor: XColors.white,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontSize: 16,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 17.w,
                        vertical: 17.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                      ),
                    ),
                    items: languageList
                        .map(
                          (item) => DropdownMenuItem<dynamic>(
                            value: item,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                item,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (item) => setState(
                      () {
                        selectedLanguage = item;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              TextFormFieldWidget(
                controller: nameController,
                hintText: 'اسم اللاعب',
              ),
              SizedBox(
                height: 13.h,
              ),
              TextFormFieldWidget(
                controller: addressController,
                hintText: 'مكان الاقامة',
              ),
              SizedBox(
                height: 13.h,
              ),
              TextFormFieldWidget(
                controller: numberController,
                hintText: 'رقم الهاتف',
              ),
              SizedBox(
                height: 300.h,
              ),
              SizedBox(
                width: 190.w,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const RegisterSuccessDialog();
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: XColors.primary,
                    foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: const Text(
                    'التالي',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
