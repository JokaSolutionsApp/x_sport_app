import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../domain/enitites/academy_review_entity.dart';

class ReviewContainer extends StatelessWidget {
  final AcademyReviewEntity review;
  const ReviewContainer({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetsManager.images.avatars.avatar0.image().image,
          ),
          title: Text(
            review.userName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: XColors.black,
            ),
          ),
          subtitle: Text(
            review.reviewDateTime,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: XColors.secondary_text_color,
            ),
          ),
          trailing: RatingBar.builder(
            textDirection: TextDirection.ltr,
            itemSize: 20,
            initialRating: 4.5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: XColors.primary,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(review.reviewContent),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text('4'),
              Icon(
                Icons.favorite_outline,
              ),
              SizedBox(
                width: 20,
              ),
              Text('4'),
              Icon(
                Icons.subdirectory_arrow_left,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
