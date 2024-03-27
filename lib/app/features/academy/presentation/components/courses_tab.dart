import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'course_card.dart';
import '../../../../../core/constance/app_constance.dart';

class CoursesTab extends StatelessWidget {
  const CoursesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    return SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22.w,
              ),
              child: Row(
                children: [
                  const Text(
                    'اختر برنامجاََ تدريبياََ يناسبك!',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: XColors.black,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 105.w,
                    height: 36.h,
                    child: DropdownButtonFormField<String>(
                      value: selectedValue,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: XColors.secondary_text_color,
                        fontWeight: FontWeight.w500,
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: XColors.secondary_text_color,
                        size: 20.sp,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.sp),
                          borderSide: const BorderSide(
                            color: Color(0xFFCFCFCF),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.sp),
                          borderSide: const BorderSide(
                            color: Color(0xFFCFCFCF),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.sp),
                          borderSide: const BorderSide(
                            color: Color(0xFFCFCFCF),
                          ),
                        ),
                        filled: true,
                        fillColor: XColors.white,
                      ),
                      onChanged: (newValue) {
                        // setState(() {
                        //   selectedValue = newValue!;
                        // });
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'تحت 7 سنين',
                          child: Text('تحت 7 سنين'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'فوق 7 سنين',
                          child: Text('فوق 7 سنين'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44.h,
            ),
            const CourseCard(),
          ],
        ),
      ),
    );
  }
}
