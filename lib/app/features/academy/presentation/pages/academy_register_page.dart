import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../paymnet/presentation/pages/payment_method_page.dart';
import '../../../../../main.dart';

import '../../../../../core/constance/app_constance.dart';
import '../components/text_form_field_widget.dart';

class AcademyRegisterPage extends StatefulWidget {
  const AcademyRegisterPage({super.key});

  @override
  State<AcademyRegisterPage> createState() => _AcademyScreenState();
}

class _AcademyScreenState extends State<AcademyRegisterPage>
    with SingleTickerProviderStateMixin {
  List<String> options = ['لك', 'لاحد افراد العائلة'];
  String currentOption = 'لك';
  List<String> ageList = ['رجال', 'شباب', 'ناشئين'];
  List<String> relativeList = ['ابن', 'ابنة'];
  String selectedAge = '';
  String selectedRelative = '';
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 16.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () =>
                          Navigator.of(navigatorKey.currentContext!).pop(),
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                    const Text(
                      'سجل الان',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 23.h,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Card(
                          color: XColors.white,
                          surfaceTintColor: XColors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Row(
                              children: [
                                Radio(
                                  activeColor: XColors.primary,
                                  value: options[0],
                                  groupValue: currentOption,
                                  onChanged: (value) {
                                    setState(() {
                                      currentOption = value.toString();
                                    });
                                  },
                                ),
                                const Text('لك'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Card(
                          color: XColors.white,
                          surfaceTintColor: XColors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Row(
                              children: [
                                Radio(
                                  activeColor: XColors.primary,
                                  value: options[1],
                                  groupValue: currentOption,
                                  onChanged: (value) {
                                    setState(() {
                                      currentOption = value.toString();
                                    });
                                  },
                                ),
                                const Text('لاحد افراد العائلة'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                if (currentOption == 'لاحد افراد العائلة')
                  Column(
                    children: [
                      SizedBox(
                        height: 35.h,
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
                            hint: const Text('صلة القرابة'),
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
                            items: relativeList
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
                                selectedRelative = item;
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                    ],
                  )
                else
                  SizedBox(
                    height: 35.h,
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
                      items: ageList
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
                          selectedAge = item;
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
                if (currentOption != 'لاحد افراد العائلة')
                  SizedBox(
                    height: 73.h,
                  ),
                SizedBox(
                  width: 190.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(navigatorKey.currentContext!).push(
                        MaterialPageRoute(
                          builder: (context) => PaymentMethodPage(),
                        ),
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
      ),
    );
  }
}
