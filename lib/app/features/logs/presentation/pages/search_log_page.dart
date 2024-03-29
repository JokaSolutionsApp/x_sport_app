import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/widgets/global_app_bar.dart';
import '../../../../widgets/rectangle_container.dart';

class SearchLogPage extends StatelessWidget {
  SearchLogPage({super.key});
  final data = [
    'الكل',
    'الاشخاص',
    'الملاعب',
    'الاشخاص',
  ];
  final ValueNotifier selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: const GlobalAppBar(
        hasSearch: false,
        title: 'سجل البحث',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.w),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'يمكنك مراجعة البطولات التي قمت بالاشتراك بها',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF616161)),
                ),
                SizedBox(height: 24.w),
                SizedBox(
                  height: 40.w,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            padding: EdgeInsets.all(4.w),
                            height: 34.w,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFFD6D3),
                                borderRadius: BorderRadius.circular(5.sp),
                                border: Border.all(
                                    color: const Color(0xFFFF3030),
                                    width: 0.5.w)),
                            child: Icon(
                              Icons.delete_forever_outlined,
                              color: const Color(0xFFFF3030),
                              size: 18.sp,
                            )),
                      ),
                      Expanded(
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            reverse: true,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 8.h),
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return ValueListenableBuilder(
                                  valueListenable: selectedIndex,
                                  builder: (context, isSelected, child) {
                                    final isSelected =
                                        selectedIndex.value == index;
                                    final Color selectedButton = isSelected
                                        ? XColors.primary
                                        : Colors.white;
                                    return GestureDetector(
                                      onTap: () {
                                        selectedIndex.value = index;
                                      },
                                      child: RectangleContainer(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        containerColor: const Color(0xFFF9F9F9),
                                        radius: 6,
                                        child: Directionality(
                                          textDirection: TextDirection.ltr,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 16.w,
                                                width: 16.w,
                                                padding:
                                                    const EdgeInsets.all(1),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xFFBBBBBB),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Container(
                                                  height: 10.w,
                                                  width: 10.w,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: selectedButton),
                                                ),
                                              ),
                                              SizedBox(width: 5.w),
                                              Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  data[index],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  height: 0.9.sh,
                  child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 12.h),
                      itemCount: 40,
                      itemBuilder: (context, index) {
                        return RectangleContainer(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          containerColor: const Color(0xFFF9F9F9),
                          radius: 6,
                          height: 65.h,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.delete_forever_outlined,
                                    color: const Color(0xFFF44336),
                                    size: 28.sp,
                                  ),
                                ),
                                Text(
                                  'لقد قمت بالبحث عن “نص البحث يكتب هنا”',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF616161)),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
