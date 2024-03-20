// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_membership_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademyMembership _$AcademyMembershipFromJson(Map<String, dynamic> json) =>
    AcademyMembership(
      sportInfo:
          SportInfoModel.fromJson(json['sportInfo'] as Map<String, dynamic>),
      academyInfoes: (json['academyInfoes'] as List<dynamic>)
          .map((e) => AcademyInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AcademyMembershipToJson(AcademyMembership instance) =>
    <String, dynamic>{
      'sportInfo': instance.sportInfo,
      'academyInfoes': instance.academyInfoes,
    };
