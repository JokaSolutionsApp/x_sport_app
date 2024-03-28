import 'package:flutter/material.dart';
import 'package:x_sport/app/features/academy/presentation/components/divider_widget.dart';
import 'package:x_sport/app/features/academy/presentation/components/new_review_tile.dart';
import 'package:x_sport/app/features/academy/presentation/components/rate_card.dart';
import 'package:x_sport/app/features/academy/presentation/components/review_container.dart';
import 'package:x_sport/app/features/academy/presentation/components/review_sort_button.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RatingCard(),
            NewReviewTile(),
            ReviewSortButton(),
            ReviewContainer(),
            DividerWidget(),
            ReviewContainer(),
          ],
        ),
      ),
    );
  }
}
