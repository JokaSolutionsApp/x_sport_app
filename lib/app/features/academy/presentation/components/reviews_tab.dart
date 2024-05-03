import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_sport/app/features/academy/presentation/bloc/academy_bloc.dart';
import 'package:x_sport/app/features/academy/presentation/components/new_review_tile.dart';
import 'package:x_sport/app/features/academy/presentation/components/rate_card.dart';
import 'package:x_sport/app/features/academy/presentation/components/review_sort_button.dart';
import 'package:x_sport/app/features/academy/presentation/components/reviews.dart';

class ReviewsTab extends StatefulWidget {
  final int academyId;
  const ReviewsTab({
    super.key,
    required this.academyId,
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
        .add(AcademyEvent.getAcademyReview(academyId: widget.academyId));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: BlocBuilder<AcademyBloc, AcademyState>(
          buildWhen: (prev, cur) {
            if (cur.runtimeType !=
                const AcademyState.getAcademyReviewLoading().runtimeType) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => const Offstage(),
                getAcademyReviewLoading: () =>
                    const CircularProgressIndicator(),
                getAcademyReviewFailure: (failure) => const Offstage(),
                academyReviewFetched: (reviews) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RatingCard(),
                      const NewReviewTile(),
                      const ReviewSortButton(),
                      Reviews(reviews: reviews),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
