import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'sport_info_entity.g.dart';

@JsonSerializable()
class SportInfoEntity extends Equatable {
  @JsonKey(name: 'sportId')
  final int sportId;
  @JsonKey(name: 'name')
  final String name;

  SportInfoEntity({
    required this.sportId,
    required this.name,
  });

  @override
  List<Object?> get props => [sportId, name];

  // factory SportInfoEntity.fromJson(Map<String, dynamic> json) => _$SportInfoEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$SportInfoEntityToJson(this);
}
