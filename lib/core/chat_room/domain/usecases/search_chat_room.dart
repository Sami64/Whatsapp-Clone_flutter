import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:whatsapp_cl/core/chat_room/domain/repositories/chat_room_repository.dart';
import 'package:whatsapp_cl/core/error/failiures.dart';
import 'package:whatsapp_cl/core/usecases/usecase.dart';

class SearchChatRoom implements UseCase<List<String>, SearchChatRoomParams> {
  final ChatRoomRepository repository;

  SearchChatRoom(this.repository);

  @override
  Future<Either<Failure, List<String>>> call(
      SearchChatRoomParams params) async {
    return await repository.searchChatRoom(params.query);
  }
}

class SearchChatRoomParams extends Equatable {
  final String query;

  SearchChatRoomParams(this.query);

  @override
  List<Object> get props => [query];
}
