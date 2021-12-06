import 'package:flutter/cupertino.dart';
import 'package:flutter_chatbot/features/home/domain/client/home_client.dart';
import 'package:flutter_chatbot/features/home/domain/model/country.dart';
import 'package:flutter_chatbot/features/home/presentation/enum/step_enum.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/home_screen.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

final _messages = [
  ChatMessage(
      sentBy: "robot",
      content:
          "👋 Heey! I'm KIK and I will ask you a few questions so we can set up your account..."),
  ChatMessage(sentBy: "robot", content: "First, tell me your name"),
];

abstract class _HomeStore with Store {
  final HomeClient client;

  @observable
  ObservableList<ChatMessage> messages = ObservableList();

  @observable
  bool isTyping = false;

  @observable
  bool hasStarted = false;

  @observable
  bool showGenderButtons = false,
      enableCountrySelection = false,
      enablePreferencesSelection = false;

  @observable
  bool textInputEnable = true;

  @observable
  FocusNode textInputFocusNode = FocusNode();

  @observable
  StepEnum currentStep = StepEnum.name;

  @observable
  ObservableList filteredCountries = ObservableList();

  List<Country> _countries = [];

  @observable
  ObservableList selectedPreference = ObservableList();

  @observable
  ObservableList preferences = ObservableList()
    ..addAll([
      "Action",
      "Comedy",
      "Drama",
      "Fantasy",
      "Horror",
      "Mystery",
      "Romance",
      "Thriller",
    ]);

  _HomeStore(this.client);

  @action
  Future<void> startBot() async {
    hasStarted = true;
    await _askName();
  }

  @action
  void onPreferencesTapped(String preference) {
    if (selectedPreference.contains(preference))
      selectedPreference.remove(preference);
    else
      selectedPreference.add(preference);
  }

  Future<void> _nextStep() async {
    switch (currentStep) {
      case StepEnum.name:
        await _askGender();
        showGenderButtons = true;
        break;
      case StepEnum.gender:
        await _askCountry();
        break;
      case StepEnum.country:
        await _askPreferences();
        break;
      case StepEnum.preferences:
      // TODO: Handle this case.
      case StepEnum.genres:
        // TODO: Handle this case.
        break;
      case StepEnum.rating:
        // TODO: Handle this case.
        break;
    }
  }

  /// User tells the name and robot says Hello.
  @action
  Future<void> answerName(String name) async {
    messages.add(ChatMessage(sentBy: "user", content: name));
    textInputEnable = false;

    await _switchTyping();
    messages.add(ChatMessage(sentBy: "robot", content: "Hello, $name!"));
    _nextStep();
  }

  /// User select the gender and robot says Great.
  @action
  Future<void> answerGender(String gender) async {
    messages.add(ChatMessage(sentBy: "user", content: gender));
    showGenderButtons = false;

    await _switchTyping();
    messages.add(ChatMessage(sentBy: "robot", content: "Great!"));

    _nextStep();
  }

  /// User select the country
  @action
  Future<void> answerCountry(String country) async {
    messages.add(ChatMessage(
      sentBy: "user",
      content: "I was born in $country",
    ));
    enableCountrySelection = false;

    await _switchTyping();
    messages.add(ChatMessage(
      sentBy: "robot",
      content:
          "That's perfect! And which types of genres are you interested in?",
    ));

    _nextStep();
  }

  /// User select the preferences
  @action
  Future<void> answerPreferences() async {
    String prefs = selectedPreference.join(", ");

    messages.add(ChatMessage(
      sentBy: "user",
      content: "I'm interested in $prefs",
    ));

    await _switchTyping();

    _nextStep();
  }

  /// Robot asking the name of the user.
  @action
  Future<void> _askName() async {
    await _switchTyping();
    messages.add(_messages[0]);
    await _switchTyping(duration: 2000);
    messages.add(_messages[1]);

    textInputFocusNode.requestFocus();
  }

  /// Robot asking the gender of the user.
  @action
  Future<void> _askGender() async {
    await _switchTyping(duration: 500);
    messages
        .add(ChatMessage(sentBy: "robot", content: "Now, tell me your gender"));

    currentStep = StepEnum.gender;
  }

  /// Robot asking the country of the user.
  @action
  Future<void> _askCountry() async {
    await _switchTyping(duration: 500);
    messages.add(ChatMessage(sentBy: "robot", content: "Where were you born?"));
    enableCountrySelection = true;

    currentStep = StepEnum.country;
  }

  /// Robot asking the references of the user.
  @action
  Future<void> _askPreferences() async {
    await _switchTyping(duration: 500);
    enablePreferencesSelection = true;

    currentStep = StepEnum.genres;
  }

  @action
  Future<void> searchCountries(String? search) async {
    if (_countries.isEmpty)
      _countries = await client.getCountries()
        ..sort((a, b) => a.name.compareTo(b.name));

    if (search == null || search.isEmpty) {
      filteredCountries
        ..clear()
        ..addAll(_countries);
    } else {
      filteredCountries
        ..clear()
        ..addAll(_countries
            .where((element) =>
                element.name.toLowerCase().contains(search.toLowerCase()))
            .toList());
    }
  }

  @action
  Future<void> _switchTyping({int duration = 1500}) async {
    isTyping = !isTyping;
    await Future.delayed(Duration(milliseconds: 0));
    isTyping = !isTyping;
  }
}
