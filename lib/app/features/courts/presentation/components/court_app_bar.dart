import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/courts/presentation/components/share_sheet.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class CourtAppBar extends StatelessWidget {
  const CourtAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      backgroundColor: Colors.transparent,
      expandedHeight: 109.h,
      pinned: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: AssetsManager.icons.share.image(
            height: 33.w,
            width: 33.w,
          ),
          onPressed: () => shareSheet(context),
        ),
      ],
    );
  }

  Future<dynamic> shareSheet(BuildContext context) {
    return showModalBottomSheet(
      constraints: BoxConstraints(
        maxWidth: 0.9.sw,
      ),
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: XColors.white,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const ShareSheet();
      },
    );
  }
}
