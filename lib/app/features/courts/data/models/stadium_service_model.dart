import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/stadium_service_entity.dart';

part 'stadium_service_model.g.dart';

@JsonSerializable()
class CourtServiceModel extends StadiumServiceEntity {
  CourtServiceModel({
    required super.serviceId,
    required super.serviceName,
    required super.imgUrl,
  });

  factory CourtServiceModel.fromJson(Map<String, dynamic> json) =>
      _$CourtServiceModelFromJson(json);
  Map<String, dynamic> toJson() => _$CourtServiceModelToJson(this);
}
