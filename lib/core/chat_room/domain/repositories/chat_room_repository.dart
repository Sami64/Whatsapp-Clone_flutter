import 'package:dartz/dartz.dart';
import 'package:whatsapp_cl/core/chat_room/domain/entities/chat_room.dart';
import 'package:whatsapp_cl/core/error/failiures.dart';

abstract class ChatRoomRepository {
  /// Return list of chat rooms
  Future<Either<Failure, List<ChatRoom>>> chatRooms();

  /// Search chat room
  Future<Either<Failure, List<String>>> searchChatRoom(String query);
}
