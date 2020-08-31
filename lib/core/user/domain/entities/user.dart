import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String userID;
  final String name;
  final String phoneNumber;
  final String about;
  final String userImageURL;
  final bool isLocalUser;

  User(
      {@required this.userID,
      @required this.name,
      @required this.phoneNumber,
      @required this.about,
      @required this.userImageURL,
      @required this.isLocalUser});

  @override
  List<Object> get props =>
      [userID, name, phoneNumber, about, userImageURL, isLocalUser];
}
