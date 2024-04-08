import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/data/models/dropdown_item_info_model.dart';
import '../../domain/enitites/age_category_dropdown_item.dart';

part 'age_category_with_courses_model.g.dart';

@JsonSerializable()
class AgeCategoryDropDownItemModel extends AgeCategoryDropdownItem {
  const AgeCategoryDropDownItemModel({
    required int id,
    required String name,
    required DropdownItemInfoModel info,
  }) : super(
          id: id,
          name: name,
          info: info,
        );

  factory AgeCategoryDropDownItemModel.fromJson(Map<String, dynamic> json) =>
      _$AgeCategoryDropDownItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$AgeCategoryDropDownItemModelToJson(this);
}
