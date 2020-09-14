import 'package:dartz/dartz.dart';
import 'package:whatsapp_cl/core/chat_room/domain/entities/chat_room.dart';
import 'package:whatsapp_cl/core/chat_room/domain/repositories/chat_room_repository.dart';
import 'package:whatsapp_cl/core/error/failiures.dart';
import 'package:whatsapp_cl/core/usecases/usecase.dart';

class ChatRooms implements UseCase<List<ChatRoom>, NoParams> {
  ChatRoomRepository repository;

  ChatRooms(this.repository);

  @override
  Future<Either<Failure, List<ChatRoom>>> call(NoParams params) async {
    // TODO: implement call
    return await repository.chatRooms();
  }
}
