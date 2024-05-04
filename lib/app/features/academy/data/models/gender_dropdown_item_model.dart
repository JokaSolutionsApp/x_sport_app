import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/gender_dropdown_item.dart';

part 'gender_dropdown_item_model.g.dart';

@JsonSerializable()
class GenderDropdownItemModel extends GenderDropdownItem {
  GenderDropdownItemModel({required super.id, required super.name});

  @override
  List<Object?> get props => [id, name];

  factory GenderDropdownItemModel.fromJson(Map<String, dynamic> json) =>
      _$GenderDropdownItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$GenderDropdownItemModelToJson(this);
}
