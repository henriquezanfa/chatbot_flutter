import 'package:flutter_chatbot/features/home/data/client/home_client_impl.dart';
import 'package:flutter_chatbot/features/home/domain/client/home_client.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  // Store
  getIt.registerLazySingleton(() => HomeStore(getIt()));

  // Client
  getIt.registerLazySingleton<HomeClient>(() => HomeClientImpl());
}
