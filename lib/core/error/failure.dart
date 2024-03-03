import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final int statusCode;

  const Failure(this.statusCode);
  @override
  List<Object> get props => [statusCode];
}

class ServerFailure extends Failure {
  const ServerFailure(super.statusCode);
}

class LocalFailure extends Failure {
  const LocalFailure(super.statusCode);
}
