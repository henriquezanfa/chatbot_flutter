import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  // Store
  getIt.registerLazySingleton(() => HomeStore());
}
