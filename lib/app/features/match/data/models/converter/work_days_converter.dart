import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/app/features/match/data/models/work_days_model.dart';
import 'package:x_sport/app/features/match/domain/enitites/work_days_entity.dart';

class WorkDaysJsonConverter
    extends JsonConverter<WorkDaysEntity, Map<String, dynamic>> {
  const WorkDaysJsonConverter();

  @override
  WorkDaysEntity fromJson(Map<String, dynamic> json) =>
      WorkDaysModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(WorkDaysEntity object) =>
      (object as WorkDaysModel).toJson();
}
