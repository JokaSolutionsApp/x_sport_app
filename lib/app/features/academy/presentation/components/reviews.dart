import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_review_entity.dart';
import 'package:x_sport/app/features/academy/presentation/components/divider_widget.dart';
import 'package:x_sport/app/features/academy/presentation/components/review_container.dart';

class Reviews extends StatelessWidget {
  final List<AcademyReviewEntity> reviews;
  const Reviews({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 0.6.sh,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ReviewContainer(
                    review: reviews[index],
                  ),
                  const DividerWidget(),
                ],
              );
            }));
  }
}
