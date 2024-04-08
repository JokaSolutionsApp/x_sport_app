import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/domain/enitites/age_category_dropdown_item.dart';
part 'dropdown_item_info_model.g.dart';

@JsonSerializable()
class DropdownItemInfoModel extends DropdownItemInfo {
  DropdownItemInfoModel({
    required int from,
    required int to,
  }) : super(
          from: from,
          to: to,
        );
  factory DropdownItemInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DropdownItemInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$DropdownItemInfoModelToJson(this);
}
