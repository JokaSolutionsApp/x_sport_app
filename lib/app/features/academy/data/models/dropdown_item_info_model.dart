import 'package:json_annotation/json_annotation.dart';

import '../../domain/enitites/age_category_dropdown_item.dart';

part 'dropdown_item_info_model.g.dart';

@JsonSerializable()
class DropdownItemInfoModel extends DropdownItemInfo {
  DropdownItemInfoModel({
    required super.from,
    required super.to,
  });
  factory DropdownItemInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DropdownItemInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$DropdownItemInfoModelToJson(this);
}
