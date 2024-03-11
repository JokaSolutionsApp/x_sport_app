import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/data/models/level_model.dart';
import 'package:x_sport/app/features/auth/domain/enitites/current_sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/level_entity.dart';

part 'current_sport_model.g.dart';

@JsonSerializable()
class CurrentSportModel extends CurrentSportEntity {
  const CurrentSportModel(
      {required int currentSportId,
      required int points,
      required double levelPercent,
      required String userLevel,
      required int numOfMatches,
      required List<LevelModel> levels})
      : super(
          currentSportId: currentSportId,
          points: points,
          levelPercent: levelPercent,
          userLevel: userLevel,
          numOfMatches: numOfMatches,
          levels: levels,
        );

  factory CurrentSportModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentSportModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$CurrentSportModelToJson(this);
}
