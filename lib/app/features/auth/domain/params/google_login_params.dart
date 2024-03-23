class GoolgeLoginParams {
  final String name;
  final String email;
  final double lat;
  final double long;

  GoolgeLoginParams(
      {required this.name,
      required this.email,
      required this.lat,
      required this.long});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "longitude": long,
      "latitude": lat,
    };
  }
}
