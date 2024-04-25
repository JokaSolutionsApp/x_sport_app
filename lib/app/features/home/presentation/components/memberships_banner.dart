import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages/memberships_page.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../../main.dart';

class MembershipsBanner extends StatelessWidget {
  const MembershipsBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: XColors.primary,
        surfaceTintColor: XColors.primary,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            Navigator.of(navigatorKey.currentContext!).push(
              MaterialPageRoute(
                builder: (context) => const MembershipsPage(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'العضويات',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: XColors.white,
                        ),
                      ),
                      Text(
                        'تابع اشتراكك في الاكاديميات التي سجلت بها',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: XColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: const BoxDecoration(
                    color: XColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: XColors.primary,
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
