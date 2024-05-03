class PreferenceValue {
  final int preferenceId;
  final int valueId;

  PreferenceValue({required this.preferenceId, required this.valueId});

  Map<String, dynamic> toMap() {
    return {
      "preferenceId": preferenceId,
      "valueId": valueId,
    };
  }
}
