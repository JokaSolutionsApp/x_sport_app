// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'package:x_sport/app/features/archives/data/models/academy_subscription_archive_model.dart';
import 'package:x_sport/app/features/archives/domain/enitites/academy_subscription_archive_entity.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/network/error_message_model.dart';
import 'package:x_sport/core/services/api_service.dart';

abstract class BaseArchiveRemoteDataSource {
  Future<List<AcademySubscriptionArchive>> getAcademySupscriptionArchive();
}

class ArchiveRemoteDataSource extends BaseArchiveRemoteDataSource {
  @override
  Future<List<AcademySubscriptionArchive>>
      getAcademySupscriptionArchive() async {
    final queryParams = {
      "FilterByAcademyName": "",
      "FilterByLastYear": false,
      "FilterByLastMonth": false,
      "FilterByLastWeek": false,
      "FilterByActive": false,
    };
    final response = await ApiService.get(
      ApiConstance.getAcademiesSubscriptionArchive,
      queryParams: queryParams,
    );
    final data = response.data;
    print('$data getAcademySupscriptionArchive');

    if (response.statusCode == 200) {
      return List<SubscriptionArchiveModel>.from(
          data['data'].map((e) => SubscriptionArchiveModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }
}
