import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:whatsapp_cl/core/error/failiures.dart';
import 'package:whatsapp_cl/core/usecases/usecase.dart';
import 'package:whatsapp_cl/core/user/domain/repositories/user_repository.dart';

class SearchUser implements UseCase<List<String>, SearchUserParams> {
  final UserRepository repository;

  SearchUser(this.repository);

  @override
  Future<Either<Failure, List<String>>> call(SearchUserParams params) async {
    return await repository.searchUser(params.query);
  }
}

class SearchUserParams extends Equatable {
  final String query;

  SearchUserParams(this.query);

  @override
  List<Object> get props => [query];
}
