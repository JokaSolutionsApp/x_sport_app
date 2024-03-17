import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constance/app_constance.dart';
import '../../../../../../widgets/rectangle_container.dart';

import '../../../../../../../core/constance/app_icons_icons.dart';

class AcademyAboutComponent extends StatelessWidget {
  AcademyAboutComponent({super.key});
  final academyServices = [
    {
      'image': AppIcons.transport,
      'title': 'مواصلات \nمؤمنة',
    },
    {
      'image': AppIcons.meds,
      'title': 'عناية \nطبية',
    },
    {
      'image': AppIcons.access_time,
      'title': 'اوقات \nمرنة',
    },
    {
      'image': AppIcons.grass,
      'title': 'عشب \nطبيعي',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.w),
          height: 0.07.sh,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '9:00 AM to 1:00 PM',
                      style: TextStyle(
                          height: 2.w,
                          color: const Color(0xFFA2A2A2),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '+96354875520557',
                      style: TextStyle(
                          color: const Color(0xFFA2A2A2),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.sp),
                            border: Border.all(
                                color: const Color(0xFFA2A2A2), width: 0.2.w)),
                        child: Icon(
                          Icons.access_time_sharp,
                          size: 16.sp,
                          color: const Color(0xFFA2A2A2),
                        )),
                    Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.sp),
                            border: Border.all(
                                color: const Color(0xFFA2A2A2), width: 0.2.w)),
                        child: Icon(
                          Icons.call,
                          size: 16.sp,
                          color: const Color(0xFF797878),
                        ))
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اسم الاكاديمية',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  'الموقع الجغرافي',
                  style: TextStyle(
                      color: const Color(0xFF797878),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: 18.h),
          alignment: Alignment.topRight,
          width: 0.74.sw,
          child: Text(
            'نص يمثل وصف عن الاكاديمية ومرافقها وخدماتها والانظمة التدريبية المتبعة وكل ما يمكن ان يهم العميل من معلومات بشكل مفصل من 5 اسطر الى 6',
            textAlign: TextAlign.end,
            style: TextStyle(color: const Color(0xFF6C6C6C), fontSize: 15.sp),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.w),
          height: 0.13.sh,
          width: 0.9.sw,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 13.w),
                        alignment: Alignment.center,
                        height: 70.w,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.sp),
                            color: const Color(0xFFECECFB),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 12,
                                  offset: Offset(0, 4.w))
                            ]),
                        child: Icon(
                          academyServices[index]['image'] as IconData,
                          color: XColors.primary,
                        )),
                    Text(
                      academyServices[index]['title'].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                );
              }),
        ),
        SizedBox(
          height: 20.w,
        ),
        RectangleContainer(
            bottomMargin: 10,
            radius: 13,
            child: Container(
              padding: EdgeInsets.only(right: 10.w),
              height: 0.08.sh,
              width: 1.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'الاشتراك بدءا من 15\$ الى 45\$ شهريا',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'يختلف الاشتراك حسب الفئات السنية ومزايا اخرى',
                    style: TextStyle(
                        color: const Color(0xFF6E6E6E),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
