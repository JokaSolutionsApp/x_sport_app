import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/match/domain/enitites/work_days_entity.dart';

part 'work_days_model.g.dart';

@JsonSerializable()
class WorkDaysModel extends WorkDaysEntity {
  const WorkDaysModel({
    required super.dayOrder,
    required super.dayName,
    required super.openAt,
    required super.closeAt,
  });

  factory WorkDaysModel.fromJson(Map<String, dynamic> json) =>
      _$WorkDaysModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkDaysModelToJson(this);
}
