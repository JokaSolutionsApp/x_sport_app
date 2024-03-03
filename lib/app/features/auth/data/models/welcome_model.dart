import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/data/models/converter/welcome_converter.dart';
import 'package:x_sport/app/features/auth/domain/enitites/welcome_enitty.dart';

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
