import 'package:json_annotation/json_annotation.dart';

import '../../domain/enitites/age_category_dropdown_item.dart';
import 'dropdown_item_info_model.dart';

part 'age_category_with_courses_model.g.dart';

@JsonSerializable()
class AgeCategoryDropDownItemModel extends AgeCategoryDropdownItem {
  const AgeCategoryDropDownItemModel({
    required super.id,
    required super.name,
    required DropdownItemInfoModel super.info,
  });

  factory AgeCategoryDropDownItemModel.fromJson(Map<String, dynamic> json) =>
      _$AgeCategoryDropDownItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$AgeCategoryDropDownItemModelToJson(this);
}
