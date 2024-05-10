import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/presentation/pages/academy_page.dart';
import 'package:x_sport/app/features/archives/domain/enitites/academy_subscription_archive_entity.dart';
import 'package:x_sport/app/features/archives/presentation/bloc/archive_bloc.dart';
import 'package:x_sport/main.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../widgets/buttons/submit_button.dart';
import '../../../../../widgets/rectangle_container.dart';

class PlayedGamesArchiveComponent extends StatefulWidget {
  final String state;
  final String title;
  const PlayedGamesArchiveComponent(
      {super.key, required this.state, required this.title});

  @override
  State<PlayedGamesArchiveComponent> createState() =>
      _PlayedGamesArchiveComponentState();
}

class _PlayedGamesArchiveComponentState
    extends State<PlayedGamesArchiveComponent> {
  late ArchiveBloc bloc;
  @override
  initState() {
    super.initState();
    bloc = context.read<ArchiveBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArchiveBloc, ArchiveState>(
      buildWhen: (previous, current) {
        if (current.runtimeType ==
            const ArchiveState.academySubscriptionArchiveFetched()
                .runtimeType) {
          return true;
        }
        if (current.runtimeType ==
            const ArchiveState.getAcademySubscriptionArchiveFailure()
                .runtimeType) {
          return true;
        }
        if (current.runtimeType ==
            const ArchiveState.getAcademySubscriptionArchiveLoading()
                .runtimeType) {
          return true;
        }
        return false;
      },
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Offstage(),
        academySubscriptionArchiveFetched: (academySubscriptionArchive) {
          List<AcademySubscriptionArchive> subscriptions =
              bloc.academySubscriptionArchive;
          return ListView.separated(
              shrinkWrap: true,
              itemCount: subscriptions.length,
              separatorBuilder: (context, index) => SizedBox(height: 21.w),
              itemBuilder: (context, index) {
                AcademySubscriptionArchive subscription = subscriptions[index];
                return RectangleContainer(
                  radius: 11,
                  height: 50,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SubmitButton(
                          text: 'تفاصيل',
                          onPressed: () {},
                          minWidth: 83,
                          height: 23,
                          radius: 4,
                          fillColor: XColors.primary,
                          textSize: 13,
                        ),
                        SizedBox(
                          width: 270.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                subscription.subscriptionEndDate,
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: XColors.primary),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                subscription.subscriptionStartDate,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                subscription.sports.first,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                subscription.academyName,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                );
              });
        },
        getAcademySubscriptionArchiveFailure: (failure) => const Offstage(),
        getAcademySubscriptionArchiveLoading: () => const Expanded(
            child: Center(
                child: const CircularProgressIndicator(
          color: XColors.primary,
        ))),
      ),
    );
  }
}
