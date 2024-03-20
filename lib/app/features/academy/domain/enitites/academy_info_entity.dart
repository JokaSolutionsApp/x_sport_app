import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'academy_info_entity.g.dart';

@JsonSerializable()
class AcademyInfoEntity extends Equatable {
  @JsonKey(name: 'academyId')
  final int academyId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'points')
  final int points;

  AcademyInfoEntity({
    required this.academyId,
    required this.name,
    required this.points,
  });

  // factory AcademyInfoEntity.fromJson(Map<String, dynamic> json) => _$AcademyInfoEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$AcademyInfoEntityToJson(this);

  @override
  List<Object?> get props => [academyId, name, points];
}
