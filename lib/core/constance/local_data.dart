import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class UserLevels {
  String points;
  String level;
  UserLevels({required this.points, required this.level});
}

class LocalPreference {
  String title;
  AssetGenImage image;
  LocalPreference({required this.title, required this.image});
}

class MatchType {
  String title;
  String subtitle;
  AssetGenImage image;
  MatchType({required this.title, required this.subtitle, required this.image});
}

class LocalData {
  static final List<UserLevels> levels = [
    UserLevels(
      points: '5000',
      level: 'متمرس',
    ),
    UserLevels(
      points: '3000',
      level: 'هاو',
    ),
    UserLevels(
      points: '1000',
      level: 'مبتدئ',
    ),
  ];
  static final List<LocalPreference> prefernces = [
    LocalPreference(
        title: 'اليد المفضلة', image: AssetsManager.images.activities.hand),
    LocalPreference(
        title: 'المركز المفضل',
        image: AssetsManager.images.activities.position),
    LocalPreference(
        title: 'الوقت المفضل ل اللعب',
        image: AssetsManager.images.activities.time),
  ];
  static final favoritSports = [
    'قدم',
    'بادل',
  ];
  static final List<MatchType> matchTypes = [
    MatchType(
      title: 'مباراة ودية',
      subtitle: 'سيتم نشر اعلانك ليظهر عند منافسين يبحثون عن مباريات ودية',
      image: AssetsManager.images.main.friendlyMatch,
    ),
    MatchType(
      title: 'مباراة تنافسية',
      subtitle: 'سيتم نشر اعلانك ليظهر عند منافسين يبحثون عن مباريات تنافسية',
      image: AssetsManager.images.main.compMatch,
    ),
  ];
}
