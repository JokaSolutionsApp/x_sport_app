import 'package:flutter/material.dart';
import 'package:x_sport/app/features/home/presentation/pages/memberships_page.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/main.dart';

class MembershipsBanner extends StatelessWidget {
  const MembershipsBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        margin: const EdgeInsets.all(25),
        color: XColors.primary,
        surfaceTintColor: XColors.primary,
        child: InkWell(
          onTap: () {
            Navigator.of(navigatorKey.currentContext!).push(
              MaterialPageRoute(builder: (context) => const MembershipsPage()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
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
