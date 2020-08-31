import 'package:get_it/get_it.dart';
import 'package:whatsapp_cl/core/user/domain/repositories/user_repository.dart';
import 'package:whatsapp_cl/core/user/domain/usecases/search_user.dart';
import 'package:whatsapp_cl/core/user/domain/usecases/user_data.dart';

void initUser() {
  final sl = GetIt.instance;

  //usecase
  sl.registerLazySingleton(() => UserData(sl()));
  sl.registerLazySingleton(() => SearchUser(sl()));

  // Repository
  /*sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());*/

  //database
}
