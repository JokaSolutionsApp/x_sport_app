import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:x_sport/app/features/academy/presentation/components/divider_widget.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class NewReviewTile extends StatelessWidget {
  const NewReviewTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerWidget(),
        ListTile(
          onTap: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      minLines: 5,
                      maxLines: 5,
                      textAlign: TextAlign.end,
                      decoration: const InputDecoration(
                        hintText: 'شارك برأيك',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(100),
                            child: Ink(
                              decoration: const ShapeDecoration(
                                color: XColors.primary,
                                shape: CircleBorder(),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AssetsManager.icons.send.image(
                                  height: 25,
                                ),
                              ),
                            ),
                          )
                          // Container(
                          //   decoration: const BoxDecoration(
                          //     shape: BoxShape.circle,
                          //     color: XColors.primary,
                          //   ),
                          //   child: IconButton(
                          //     color: XColors.white,
                          //     onPressed: () {},
                          //     icon: const Icon(
                          //       Icons.send,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          leading: const Icon(
            Icons.add_comment_outlined,
            color: XColors.primary,
          ),
          title: const Text(
            'شارك رأيك',
            style: TextStyle(
              color: XColors.primary,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const DividerWidget(),
      ],
    );
  }
}
