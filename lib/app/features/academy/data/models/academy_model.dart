import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/academy_entity.dart';
import 'gender_dropdown_item_model.dart';
import 'suggested_academy_model.dart';

part 'academy_model.g.dart';

@JsonSerializable()
class AcademyModel extends AcademyEntity {
  const AcademyModel({
    required List<GenderDropdownItemModel> gendersDropdownItems,
    required List<SuggestedAcademyModel> suggestedAcademies,
  }) : super(
            gendersDropdownItems: gendersDropdownItems,
            suggestedAcademies: suggestedAcademies);

  @override
  List<Object?> get props => [gendersDropdownItems, suggestedAcademies];

  factory AcademyModel.fromJson(Map<String, dynamic> json) =>
      _$AcademyModelFromJson(json);
  Map<String, dynamic> toJson() => _$AcademyModelToJson(this);
}
