// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademyModel _$AcademyModelFromJson(Map<String, dynamic> json) => AcademyModel(
      gendersDropdownItems: (json['gendersDropdownItems'] as List<dynamic>)
          .map((e) =>
              GenderDropdownItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggestedAcademies: (json['suggestedAcademies'] as List<dynamic>)
          .map((e) => SuggestedAcademyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AcademyModelToJson(AcademyModel instance) =>
    <String, dynamic>{
      'gendersDropdownItems': instance.gendersDropdownItems,
      'suggestedAcademies': instance.suggestedAcademies,
    };
