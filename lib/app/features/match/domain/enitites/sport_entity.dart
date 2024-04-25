import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../../core/constance/json_keys.dart';

class SportEntity extends Equatable {
  @JsonKey(name: SportKeys.sportId)
  final int sportId;
  @JsonKey(name: SportKeys.name)
  final String name;

  const SportEntity({required this.sportId, required this.name});
  SportEntity copyWith({
    int? sportId,
    String? name,
  }) =>
      SportEntity(
        sportId: sportId ?? this.sportId,
        name: name ?? this.name,
      );
  @override
  List<Object?> get props => [sportId, name];
}
