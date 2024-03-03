import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final int statusCode;
  const ErrorModel({
    required this.statusCode,
  });

  factory ErrorModel.formJson(Map<String, dynamic> json) {
    return ErrorModel(
      statusCode: json["statusCode"] ?? 0,
    );
  }

  @override
  List<Object?> get props => [
        statusCode,
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
