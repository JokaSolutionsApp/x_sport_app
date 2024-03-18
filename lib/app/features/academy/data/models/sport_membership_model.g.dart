// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_membership_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportMembershipModel _$SportMembershipModelFromJson(
        Map<String, dynamic> json) =>
    SportMembershipModel(
      sportId: json['sportId'] as int,
      name: json['sportName'] as String,
    );

Map<String, dynamic> _$SportMembershipModelToJson(
        SportMembershipModel instance) =>
    <String, dynamic>{
      'sportId': instance.sportId,
      'sportName': instance.name,
    };
