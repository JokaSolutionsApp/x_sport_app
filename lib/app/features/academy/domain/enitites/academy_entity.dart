import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/app/features/academy/domain/enitites/gender_dropdown_item.dart';
import 'package:x_sport/app/features/academy/domain/enitites/suggested_academy_entity.dart';

@JsonSerializable()
class AcademyEntity extends Equatable {
  @JsonKey(name: 'gendersDropdownItems')
  final List<GenderDropdownItem> gendersDropdownItems;
  @JsonKey(name: 'suggestedAcademies')
  final List<SuggestedAcademyEntity> suggestedAcademies;

  const AcademyEntity({
    required this.gendersDropdownItems,
    required this.suggestedAcademies,
  });

  @override
  List<Object?> get props => [gendersDropdownItems, suggestedAcademies];
}
