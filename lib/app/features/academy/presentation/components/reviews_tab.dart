import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/presentation/bloc/academy_bloc.dart';
import 'package:x_sport/app/features/academy/presentation/components/divider_widget.dart';
import 'package:x_sport/app/features/academy/presentation/components/new_review_tile.dart';
import 'package:x_sport/app/features/academy/presentation/components/rate_card.dart';
import 'package:x_sport/app/features/academy/presentation/components/review_container.dart';
import 'package:x_sport/app/features/academy/presentation/components/review_sort_button.dart';

class ReviewsTab extends StatefulWidget {
  const ReviewsTab({
    super.key,
  });

  @override
  State<ReviewsTab> createState() => _ReviewsTabState();
}

class _ReviewsTabState extends State<ReviewsTab> {
  @override
  void initState() {
    super.initState();
    context
        .read<AcademyBloc>()
        .add(AcademyEvent.getAcademyReview(academyId: 5));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     RatingCard(),
        //     NewReviewTile(),
        //     ReviewSortButton(),
        //     ReviewContainer(),
        //     DividerWidget(),
        //     ReviewContainer(),
        //   ],
        // ),
        child: BlocBuilder<AcademyBloc, AcademyState>(
          buildWhen: (prev, cur) {
            print("cur.runtimeType courses ${cur.runtimeType}");
            if (cur.runtimeType !=
                const AcademyState.getAcademyReviewLoading().runtimeType) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Offstage(),
                getAcademyReviewLoading: () => CircularProgressIndicator(),
                getAcademyReviewFailure: (failure) => Offstage(),
                academyReviewFetched: (reviews) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingCard(),
                      NewReviewTile(),
                      ReviewSortButton(),
                      Container(
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
                                    DividerWidget(),
                                  ],
                                );
                              }))
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
