import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AcademyServiceEntity extends Equatable {
  @JsonKey(name: 'serviceId')
  final int serviceId;
  @JsonKey(name: 'serviceName')
  final String serviceName;
  @JsonKey(name: 'imgUrl')
  final String imgUrl;

  const AcademyServiceEntity({
    required this.serviceId,
    required this.serviceName,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [serviceId, serviceName, imgUrl];
}
