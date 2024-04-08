// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age_category_with_courses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgeCategoryDropDownItemModel _$AgeCategoryDropDownItemModelFromJson(
        Map<String, dynamic> json) =>
    AgeCategoryDropDownItemModel(
      id: json['id'] as int,
      name: json['name'] as String,
      info:
          DropdownItemInfoModel.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AgeCategoryDropDownItemModelToJson(
        AgeCategoryDropDownItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'info': instance.info,
    };
