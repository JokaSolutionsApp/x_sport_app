import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';

class CompetitiveMatchesGridCard extends StatelessWidget {
  const CompetitiveMatchesGridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: XColors.white,
      surfaceTintColor: XColors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetsManager.images.avatars.avatar0.image().image,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Column(
                    children: [
                      Text(
                        'اسم المستخدم',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: XColors.primary_text_color,
                        ),
                      ),
                      Text(
                        'المستوى متقدم',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: XColors.secondary_text_color,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Icon(
                          Icons.sports_tennis,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: 'اللعبة: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                      ),
                    ),
                    TextSpan(
                      text: 'تنس',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      Icons.location_on_outlined,
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'الملعب: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                          TextSpan(
                            text: 'اسم الملعب وعنوانه بالتفصيل ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'ينتهي بعد: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          TextSpan(
                            text: '24:58:12',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'السعر: 24\$',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Center(
                  child: SizedBox(
                    height: 30.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: XColors.primary,
                        foregroundColor: XColors.white,
                        shape: const RoundedRectangleBorder(),
                      ),
                      child: const Text(
                        'طلب اللعب',
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
      ),
    );
  }
}
