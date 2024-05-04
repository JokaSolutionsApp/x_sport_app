// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FloorModel _$FloorModelFromJson(Map<String, dynamic> json) => FloorModel(
      floorId: json['floorId'] as int,
      sportId: json['sportId'] as int,
      sportName: json['sportName'] as String,
      floorName: json['floorName'] as String,
      numPlayers: json['numPlayers'] as int,
    );

Map<String, dynamic> _$FloorModelToJson(FloorModel instance) =>
    <String, dynamic>{
      'floorId': instance.floorId,
      'sportId': instance.sportId,
      'sportName': instance.sportName,
      'floorName': instance.floorName,
      'numPlayers': instance.numPlayers,
    };
