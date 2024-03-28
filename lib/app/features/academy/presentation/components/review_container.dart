import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetsManager.images.avatars.avatar0.image().image,
          ),
          title: const Text(
            'اسم المستخدم',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: XColors.black,
            ),
          ),
          subtitle: const Text(
            'منذ يومين',
            style: TextStyle(
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق',
          ),
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
