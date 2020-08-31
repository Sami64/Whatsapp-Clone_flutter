import 'package:whatsapp_cl/core/user/domain/entities/user.dart';
import 'package:meta/meta.dart';

class UserModel extends User {
  UserModel(
      {@required String userID,
      @required String name,
      @required String phoneNumber,
      @required String about,
      @required String userImageURL,
      @required bool isLocalUser})
      : super(
            userID: userID,
            name: name,
            phoneNumber: phoneNumber,
            about: about,
            userImageURL: userImageURL,
            isLocalUser: isLocalUser);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'],
        userID: json['userID'],
        phoneNumber: json['phoneNumber'],
        about: json['about'],
        userImageURL: json['userImageURL'],
        isLocalUser: json['isLocalUser']);
  }
}
