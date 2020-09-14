import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ChatRoom extends Equatable {
  final String roomId;
  final String roomType;
  final String name;

  ChatRoom(
      {@required this.roomId, @required this.roomType, @required this.name});

  @override
  List<Object> get props => [roomId, roomType, name];
}
