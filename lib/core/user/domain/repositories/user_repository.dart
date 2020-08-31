import 'package:dartz/dartz.dart';
import 'package:whatsapp_cl/core/error/failiures.dart';
import 'package:whatsapp_cl/core/user/domain/entities/user.dart';

abstract class UserRepository {
  /// Retrieve user from database
  Future<Either<Failure, User>> userData();

  /// Search user in db
  Future<Either<Failure, List<String>>> searchUser(String query);
}
