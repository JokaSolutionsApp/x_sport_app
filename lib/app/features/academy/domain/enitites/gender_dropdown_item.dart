import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class GenderDropdownItem extends Equatable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;

  GenderDropdownItem({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
