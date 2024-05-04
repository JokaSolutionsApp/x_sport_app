import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../components/competitive_matches_grid_card.dart';
import '../components/filter_widget.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../../main.dart';

class CompetitveMatchesPage extends StatelessWidget {
  const CompetitveMatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: XColors.scaffold_background3,
        appBar: AppBar(
          backgroundColor: XColors.scaffold_background3,
          surfaceTintColor: XColors.scaffold_background3,
          title: Row(
            children: [
              IconButton(
                onPressed: () =>
                    Navigator.of(navigatorKey.currentContext!).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
              const Text(
                'العب مباريات تنافسية قريبة منك!',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Center(
                            child: Text(
                              'فلترة البحث',
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          const Text(
                            'اللعبة',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          const FilterWidget(),
                          SizedBox(
                            height: 8.h,
                          ),
                          const Text(
                            'التاريخ',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          const FilterWidget(),
                          SizedBox(
                            height: 8.h,
                          ),
                          const Text(
                            'الملعب',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          SizedBox(
                            width: 140.w,
                            child: DropdownButtonFormField<String>(
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
                                contentPadding: EdgeInsets.zero,
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
                                  value: 'ملعب ١',
                                  child: Text('ملعب ١'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'ملعب ٢',
                                  child: Text('ملعب ٢'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          const FilterWidget(),
                          SizedBox(
                            height: 8.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Center(
                              child: SizedBox(
                                height: 40.h,
                                width: 130.w,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: XColors.primary,
                                    foregroundColor: XColors.white,
                                    shape: const StadiumBorder(),
                                  ),
                                  child: const Text(
                                    'تطبيق',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 40.w,
                    width: 40.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.sp),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.1),
                          blurRadius: 6.sp,
                          offset: Offset(0, 4.w),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.filter_list,
                      size: 28.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 16,
          ),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return const CompetitiveMatchesGridCard();
            },
          ),
        ),
      ),
    );
  }
}
