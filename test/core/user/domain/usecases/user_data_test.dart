import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:whatsapp_cl/core/usecases/usecase.dart';
import 'package:whatsapp_cl/core/user/data/models/user_model.dart';
import 'package:whatsapp_cl/core/user/domain/entities/user.dart';
import 'package:whatsapp_cl/core/user/domain/repositories/user_repository.dart';
import 'package:whatsapp_cl/core/user/domain/usecases/user_data.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  UserData usecase;
  MockUserRepository repository;

  setUp(() {
    repository = MockUserRepository();
    usecase = UserData(repository);
  });

  final User tUser = UserModel.fromJson(json.decode(fixture('user.json')));

  test('should get user from repository', () async {
    //arrange
    when(repository.userData()).thenAnswer((_) async => Right(tUser));
    //act
    final result = await usecase(NoParams());
    //assert
    expect(result, Right(tUser));
    verify(repository.userData());
    verifyNoMoreInteractions(repository);
  });
}
