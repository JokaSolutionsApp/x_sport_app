import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'sport_info_entity.dart';
import 'academy_info_entity.dart';

// part 'main_structure_model.g.dart';

@JsonSerializable()
class AcademyMembershipEntity extends Equatable {
  @JsonKey(name: 'sportInfo')
  final SportInfoEntity sportInfo;
  @JsonKey(name: 'academyInfoes')
  final List<AcademyInfoEntity> academyInfoes;

  AcademyMembershipEntity({
    required this.sportInfo,
    required this.academyInfoes,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [sportInfo, academyInfoes];

  // factory AcademyMembershipEntity.fromJson(Map<String, dynamic> json) =>
  //     _$AcademyMembershipEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$AcademyMembershipEntityToJson(this);
}
