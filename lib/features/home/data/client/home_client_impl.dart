import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chatbot/features/home/domain/client/home_client.dart';
import 'package:flutter_chatbot/features/home/domain/model/answer_model.dart';
import 'package:flutter_chatbot/features/home/domain/model/country.dart';

class HomeClientImpl extends HomeClient {
  @override
  Future<List<Country>> getCountries() async {
    final countries = <Country>[];

    await FirebaseFirestore.instance
        .collection('countries')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        countries
            .add(Country.fromJson(element.data()! as Map<String, dynamic>));
      });
    });

    countries.removeWhere((element) => element.name == "");

    return countries;
  }

  @override
  Future<void> saveUserAnswers(AnswerModel answerModel) async {
    await FirebaseFirestore.instance.collection("answers").add(
          answerModel.toJson(),
        );
  }
}
