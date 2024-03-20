import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_info_entity.dart';

part 'academy_info_model.g.dart';

@JsonSerializable()
class AcademyInfoModel extends AcademyInfoEntity {
  AcademyInfoModel({
    required super.academyId,
    required super.name,
    required super.points,
  });

  factory AcademyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AcademyInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$AcademyInfoModelToJson(this);
}
