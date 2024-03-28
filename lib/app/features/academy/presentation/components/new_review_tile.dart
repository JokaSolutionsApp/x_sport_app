import 'package:flutter/material.dart';
import 'package:x_sport/app/features/academy/presentation/components/divider_widget.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class NewReviewTile extends StatelessWidget {
  const NewReviewTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DividerWidget(),
        ListTile(
          leading: Icon(
            Icons.add_comment_outlined,
            color: XColors.primary,
          ),
          title: Text(
            'شارك رأيك',
            style: TextStyle(
              color: XColors.primary,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        DividerWidget(),
      ],
    );
  }
}
