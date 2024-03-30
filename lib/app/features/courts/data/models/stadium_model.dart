import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/stadiums_entity.dart';

part 'stadium_model.g.dart';

@JsonSerializable()
class StadiumModel extends StadiumEntity {
  StadiumModel({
    required super.stadiumId,
    required super.stadiumName,
    required super.stadiumType,
    required super.regionName,
    required super.lat,
    required super.long,
    required super.evaluation,
    required super.numOfReviews,
    required super.coverPhoto,
    required super.coverVideo,
    required super.photos,
    required super.videos,
  });

  factory StadiumModel.fromJson(Map<String, dynamic> json) =>
      _$StadiumModelFromJson(json);
  Map<String, dynamic> toJson() => _$StadiumModelToJson(this);
}
