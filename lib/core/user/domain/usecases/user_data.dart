import 'package:dartz/dartz.dart';
import 'package:whatsapp_cl/core/error/failiures.dart';
import 'package:whatsapp_cl/core/usecases/usecase.dart';
import 'package:whatsapp_cl/core/user/domain/entities/user.dart';
import 'package:whatsapp_cl/core/user/domain/repositories/user_repository.dart';

class UserData implements UseCase<User, NoParams> {
  final UserRepository repository;

  UserData(this.repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await repository.userData();
  }
}
