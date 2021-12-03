import 'package:flutter_chatbot/features/home/domain/model/country.dart';

abstract class HomeClient {
  Future<List<Country>> getCountries();
}
