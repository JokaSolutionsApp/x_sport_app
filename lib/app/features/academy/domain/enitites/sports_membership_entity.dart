import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/josn_keys/auth_keys.dart';

class SportMembershipEntity extends Equatable {
  @JsonKey(name: Welcomekeys.sportId)
  final int sportId;
  @JsonKey(name: Welcomekeys.name)
  final String name;

  const SportMembershipEntity({required this.sportId, required this.name});
  SportMembershipEntity copyWith({
    int? sportId,
    String? name,
  }) =>
      SportMembershipEntity(
        sportId: sportId ?? this.sportId,
        name: name ?? this.name,
      );
  @override
  List<Object?> get props => [sportId, name];
}
