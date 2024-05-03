class EditUserProfileParams {
  final String name;
  final String phone;
  final String gender;
  final List<int> sportIds;
  final double lat;
  final double long;
  final String? imageName;
  final List<int>? imageBytes;
  final String? imageType;

  EditUserProfileParams({
    required this.name,
    required this.phone,
    required this.gender,
    required this.sportIds,
    required this.lat,
    required this.long,
    this.imageName,
    this.imageBytes,
    this.imageType,
  });
}
