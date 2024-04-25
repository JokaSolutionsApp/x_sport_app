import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../../core/constance/json_keys.dart';

@JsonSerializable()
class FloorEntity extends Equatable {
  @JsonKey(name: FloorKeys.floorId)
  final int floorId;
  @JsonKey(name: FloorKeys.sportId)
  final int sportId;
  @JsonKey(name: FloorKeys.sportName)
  final String sportName;
  @JsonKey(name: FloorKeys.floorName)
  final String floorName;
  @JsonKey(name: FloorKeys.numPlayers)
  final int numPlayers;

  const FloorEntity({
    required this.floorId,
    required this.sportId,
    required this.sportName,
    required this.floorName,
    required this.numPlayers,
  });

  @override
  List<Object?> get props => [
        floorId,
        sportId,
        sportName,
        floorName,
        numPlayers,
      ];
}
