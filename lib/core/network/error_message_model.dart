import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final int statusCode;
  final String message;
  const ErrorModel({
    required this.statusCode,
    required this.message,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    final String errorMessage = json["error"]["message"] != null &&
            json["error"]["message"].runtimeType == String
        ? json["error"]["message"]
        : json["error"]["message"]["title"];
    return ErrorModel(
      statusCode: json["statusCode"] ?? 0,
      message: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        statusCode,
        message,
      ];
}

class LocalErrorModel extends Equatable {
  final String statusCode;
  const LocalErrorModel({
    required this.statusCode,
  });

  @override
  List<Object?> get props => [
        statusCode,
      ];
}
