import 'package:json_annotation/json_annotation.dart';
import 'stadium_service_model.dart';
import '../../domain/enitites/about_stadium_entity.dart';

part 'about_stadium_model.g.dart';

@JsonSerializable()
class AboutStadiumModel extends AboutStadiumEntity {
  AboutStadiumModel({
    required int stadiumId,
    String? stadiumType,
    required String regionName,
    required String name,
    required String description,
    required double price,
    String? openAt,
    String? closeAt,
    required List<CourtServiceModel> services,
    required String coverPhoto,
    required String coverVideo,
    required List<String> photos,
    required List<String> videos,
  }) : super(
          stadiumId: stadiumId,
          stadiumType: stadiumType ?? '',
          regionName: regionName,
          name: name,
          description: description,
          price: price,
          openAt: openAt,
          closeAt: closeAt,
          services: services,
          coverPhoto: coverPhoto,
          coverVideo: coverVideo,
          photos: photos,
          videos: videos,
        );

  factory AboutStadiumModel.fromJson(Map<String, dynamic> json) =>
      _$AboutStadiumModelFromJson(json);
}
