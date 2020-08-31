import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

/// [ServerFailue] called when device onlin
/// but Server Error
class ServerFailure extends Failure {
  @override
  List<Object> get props => null;
}

/// [CacheFailure] called when device online
/// but Database Error
class CacheFailure extends Failure {
  @override
  List<Object> get props => null;
}

/// [InternetFailure] called when device offline
class InternetFailure extends Failure {
  @override
  List<Object> get props => null;
}
