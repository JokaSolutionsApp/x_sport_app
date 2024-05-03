import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final int statusCode;
  final String message;

  const Failure(this.statusCode, this.message);
  @override
  List<Object> get props => [statusCode, message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.statusCode, super.message);
}

class LocalFailure extends Failure {
  const LocalFailure(super.statusCode, super.message);
}
