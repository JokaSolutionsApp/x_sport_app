import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/constance/json_keys.dart';

@JsonSerializable()
class WorkDaysEntity extends Equatable {
  @JsonKey(name: WorkDaysKeys.dayOrder)
  final int dayOrder;
  @JsonKey(name: WorkDaysKeys.dayName)
  final String dayName;
  @JsonKey(name: WorkDaysKeys.openAt)
  final String openAt;
  @JsonKey(name: WorkDaysKeys.closeAt)
  final String closeAt;

  const WorkDaysEntity({
    required this.dayOrder,
    required this.dayName,
    required this.openAt,
    required this.closeAt,
  });

  @override
  List<Object?> get props => [
        dayOrder,
        dayName,
        openAt,
        closeAt,
      ];
}
