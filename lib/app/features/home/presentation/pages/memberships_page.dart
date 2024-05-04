import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../academy/presentation/bloc/academy_bloc.dart';
import '../components/memberships_page_card.dart';
import '../../../../../core/constance/app_constance.dart';

import '../../../../../main.dart';

class MembershipsPage extends StatefulWidget {
  const MembershipsPage({super.key});

  @override
  State<MembershipsPage> createState() => _MembershipsPageState();
}

class _MembershipsPageState extends State<MembershipsPage> {
  @override
  initState() {
    super.initState();
    context.read<AcademyBloc>().add(const AcademyEvent.getSportsMembership());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.scaffold_background2,
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      'العضويات',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 9.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 46.w),
                  child: const Text(
                    'تابع اشتراكك في الاكاديميات التي سجلت بها',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                const MembershipsPageCard(
                  status: 'سارية',
                ),
                const MembershipsPageCard(
                  status: 'منتهية',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
