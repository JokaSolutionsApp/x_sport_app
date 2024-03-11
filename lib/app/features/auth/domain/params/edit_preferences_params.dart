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

class EditPreferencesParams {
  final List<PreferenceValue> preferenceValues;

  EditPreferencesParams({required this.preferenceValues});

  Map<String, dynamic> toMap() {
    return {
      "preferenceValues": preferenceValues.map((pv) => pv.toMap()).toList(),
    };
  }
}
