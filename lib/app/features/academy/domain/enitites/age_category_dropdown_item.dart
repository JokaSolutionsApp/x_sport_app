import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AgeCategoryDropdownItem extends Equatable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'info')
  final DropdownItemInfo info;

  const AgeCategoryDropdownItem({
    required this.id,
    required this.name,
    required this.info,
  });

  @override
  List<Object?> get props => [id, name, info];
}

@JsonSerializable()
class DropdownItemInfo extends Equatable {
  @JsonKey(name: 'from')
  final int from;
  @JsonKey(name: 'to')
  final int to;

  DropdownItemInfo({
    required this.from,
    required this.to,
  });

  @override
  List<Object?> get props => [from, to];
}
