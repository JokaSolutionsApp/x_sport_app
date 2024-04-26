import 'package:json_annotation/json_annotation.dart';

import '../../domain/enitites/sport_stadium_entity.dart';
import 'converter/floor_converter.dart';

part 'sport_stadium_model.g.dart';

@JsonSerializable(converters: [FloorJsonConverter()])
class SportStadiumModel extends SportStadiumEntity {
  const SportStadiumModel({
    required super.stadiumId,
    required super.regionName,
    required super.coverPhoto,
    required super.coverVideo,
    required super.photos,
    required super.videos,
    required super.stadiumName,
    required super.floors,
    required super.latitude,
    required super.longitude,
    required super.numberOfReviews,
    required super.evaluation,
  });

  factory SportStadiumModel.fromJson(Map<String, dynamic> json) =>
      _$SportStadiumModelFromJson(json);

  Map<String, dynamic> toJson() => _$SportStadiumModelToJson(this);
}
