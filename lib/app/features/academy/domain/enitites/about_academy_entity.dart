import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_service_entity.dart';
// import 'service.dart'; // Import the Service model

// part 'academy.g.dart';

@JsonSerializable()
class AboutAcademyEntity extends Equatable {
  @JsonKey(name: 'academyId')
  final int academyId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  @JsonKey(name: 'minPrice')
  final double minPrice;
  @JsonKey(name: 'maxPrice')
  final double maxPrice;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'openAt')
  final String openAt;
  @JsonKey(name: 'closeAt')
  final String closeAt;
  @JsonKey(name: 'services')
  final List<AcademyServiceEntity> services;

  AboutAcademyEntity({
    required this.academyId,
    required this.name,
    required this.description,
    required this.lat,
    required this.long,
    required this.minPrice,
    required this.maxPrice,
    required this.phone,
    required this.openAt,
    required this.closeAt,
    required this.services,
  });

  @override
  List<Object?> get props => [
        academyId,
        name,
        description,
        lat,
        long,
        minPrice,
        maxPrice,
        phone,
        openAt,
        closeAt,
        services
      ];

  // factory AboutAcademyEntity.fromJson(Map<String, dynamic> json) =>
  //     _$AboutAcademyEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$AboutAcademyEntityoJson(this);
}
