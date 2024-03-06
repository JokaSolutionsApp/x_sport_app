import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/favorite_sport_entity.dart';
import 'sport_preference_model.dart';

part 'favorite_sport_model.g.dart';

@JsonSerializable()
class FavoriteSportModel extends FavoriteSportEntity {
  const FavoriteSportModel({
    required int id,
    required String name,
    required bool isCurrentState,
    required List<SportPreferenceModel> preferences,
  }) : super(
          id: id,
          name: name,
          isCurrentState: isCurrentState,
          preferences: preferences,
        );

  factory FavoriteSportModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteSportModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FavoriteSportModelToJson(this);
}
