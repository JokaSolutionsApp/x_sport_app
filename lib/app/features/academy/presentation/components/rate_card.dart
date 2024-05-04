import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constance/app_constance.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: XColors.white,
      surfaceTintColor: XColors.white,
      margin: const EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '4.5',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: XColors.black,
                        ),
                      ),
                      TextSpan(
                        text: '/5',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: XColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'بناءََ على 283 مراجعة',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: XColors.secondary_text_color,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RatingBar.builder(
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
              ],
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('5'),
                      const SizedBox(
                        width: 6,
                      ),
                      SizedBox(
                        width: 150.w,
                        child: const LinearProgressIndicator(
                          value: 1,
                          color: XColors.primary,
                          backgroundColor: XColors.grey3,
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('4'),
                      const SizedBox(
                        width: 6,
                      ),
                      SizedBox(
                        width: 150.w,
                        child: const LinearProgressIndicator(
                          value: 0.8,
                          color: XColors.primary,
                          backgroundColor: XColors.grey3,
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('3'),
                      const SizedBox(
                        width: 6,
                      ),
                      SizedBox(
                        width: 150.w,
                        child: const LinearProgressIndicator(
                          value: 0.5,
                          color: XColors.primary,
                          backgroundColor: XColors.grey3,
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('2'),
                      const SizedBox(
                        width: 6,
                      ),
                      SizedBox(
                        width: 150.w,
                        child: const LinearProgressIndicator(
                          value: 0.3,
                          color: XColors.primary,
                          backgroundColor: XColors.grey3,
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('1'),
                      const SizedBox(
                        width: 6,
                      ),
                      SizedBox(
                        width: 150.w,
                        child: const LinearProgressIndicator(
                          value: 0.1,
                          color: XColors.primary,
                          backgroundColor: XColors.grey3,
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
