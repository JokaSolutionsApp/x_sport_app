import 'package:json_annotation/json_annotation.dart';
import 'converter/welcome_converter.dart';
import '../../domain/enitites/welcome_enitty.dart';

part 'welcome_model.g.dart';

@JsonSerializable(converters: [SportJsonConverter()])
class WelcomeModel extends WelcomeEntity {
  const WelcomeModel({
    required super.sports,
    required super.token,
  });

  factory WelcomeModel.fromJson(Map<String, dynamic> json) =>
      _$WelcomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$WelcomeModelToJson(this);
}
