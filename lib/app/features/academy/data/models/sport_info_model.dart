import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/sport_info_entity.dart';

part 'sport_info_model.g.dart';

@JsonSerializable()
class SportInfoModel extends SportInfoEntity {
  SportInfoModel({
    required super.sportId,
    required super.name,
  });

  factory SportInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SportInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$SportInfoModelToJson(this);
}
