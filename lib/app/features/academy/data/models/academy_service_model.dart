import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/academy_service_entity.dart';

part 'academy_service_model.g.dart';

@JsonSerializable()
class AcademyServiceModel extends AcademyServiceEntity {
  AcademyServiceModel({
    required super.serviceId,
    required super.serviceName,
    required super.imgUrl,
  });

  factory AcademyServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AcademyServiceModelFromJson(json);
  Map<String, dynamic> toJson() => _$AcademyServiceModelToJson(this);
}
