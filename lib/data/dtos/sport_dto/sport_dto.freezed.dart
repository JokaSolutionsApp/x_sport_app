// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SportDto _$SportDtoFromJson(Map<String, dynamic> json) {
  return _SportDto.fromJson(json);
}

/// @nodoc
mixin _$SportDto {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportDtoCopyWith<SportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportDtoCopyWith<$Res> {
  factory $SportDtoCopyWith(SportDto value, $Res Function(SportDto) then) =
      _$SportDtoCopyWithImpl<$Res, SportDto>;
  @useResult
  $Res call({@JsonKey(name: "id") int id, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$SportDtoCopyWithImpl<$Res, $Val extends SportDto>
    implements $SportDtoCopyWith<$Res> {
  _$SportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SportDtoImplCopyWith<$Res>
    implements $SportDtoCopyWith<$Res> {
  factory _$$SportDtoImplCopyWith(
          _$SportDtoImpl value, $Res Function(_$SportDtoImpl) then) =
      __$$SportDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int id, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$SportDtoImplCopyWithImpl<$Res>
    extends _$SportDtoCopyWithImpl<$Res, _$SportDtoImpl>
    implements _$$SportDtoImplCopyWith<$Res> {
  __$$SportDtoImplCopyWithImpl(
      _$SportDtoImpl _value, $Res Function(_$SportDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SportDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SportDtoImpl implements _SportDto {
  const _$SportDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name});

  factory _$SportDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'SportDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportDtoImplCopyWith<_$SportDtoImpl> get copyWith =>
      __$$SportDtoImplCopyWithImpl<_$SportDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportDtoImplToJson(
      this,
    );
  }
}

abstract class _SportDto implements SportDto {
  const factory _SportDto(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name}) = _$SportDtoImpl;

  factory _SportDto.fromJson(Map<String, dynamic> json) =
      _$SportDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SportDtoImplCopyWith<_$SportDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
