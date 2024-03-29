import 'package:json_annotation/json_annotation.dart';
import 'academy_service_model.dart';
import '../../domain/enitites/about_academy_entity.dart';

part 'about_academy_model.g.dart';

@JsonSerializable()
class AboutAcademyModel extends AboutAcademyEntity {
  AboutAcademyModel({
    required int academyId,
    required String name,
    required String description,
    required double lat,
    required double long,
    required double minPrice,
    required double maxPrice,
    required String phone,
    required String openAt,
    required String closeAt,
    required List<AcademyServiceModel> services,
  }) : super(
          academyId: academyId,
          name: name,
          description: description,
          lat: lat,
          long: long,
          minPrice: minPrice,
          maxPrice: maxPrice,
          phone: phone,
          openAt: openAt,
          closeAt: closeAt,
          services: services,
        );

  factory AboutAcademyModel.fromJson(Map<String, dynamic> json) =>
      _$AboutAcademyModelFromJson(json);
  // Map<String, dynamic> toJson() => _$AboutAcademyModeltoJson(this);
}
