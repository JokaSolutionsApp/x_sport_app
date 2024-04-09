import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final int statusCode;
  final String message;
  const ErrorModel({
    required this.statusCode,
    required this.message,
  });

  factory ErrorModel.formJson(Map<String, dynamic> json) {
    return ErrorModel(
      statusCode: json["statusCode"] ?? 0,
      message: json["error"]["message"] ?? '',
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
