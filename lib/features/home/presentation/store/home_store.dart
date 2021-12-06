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
      enableGenresSelection = false,
      enableMediaSelection = false,
      enableRatingSelection = false;

  @observable
  bool textInputEnable = true;

  @observable
  FocusNode textInputFocusNode = FocusNode();

  @observable
  int rating = 0;

  @observable
  StepEnum currentStep = StepEnum.name;

  @observable
  ObservableList filteredCountries = ObservableList();

  List<Country> _countries = [];

  @observable
  ObservableList selectedGenres = ObservableList(),
      selectedMedia = ObservableList();

  @observable
  ObservableList genres = ObservableList()
        ..addAll([
          "Action",
          "Comedy",
          "Drama",
          "Fantasy",
          "Horror",
          "Mystery",
          "Romance",
          "Thriller",
        ]),
      medias = ObservableList()
        ..addAll([
          "Podcasts",
          "Movies",
          "Series",
          "Books",
          "Audiobooks",
          "Radios",
          "Magazines",
        ]);

  _HomeStore(this.client);

  @action
  Future<void> startBot() async {
    hasStarted = true;
    await _askName();
  }

  @action
  void onGenreTapped(String genre) {
    if (selectedGenres.contains(genre))
      selectedGenres.remove(genre);
    else
      selectedGenres.add(genre);
  }

  @action
  void onMediaTapped(String media) {
    if (selectedMedia.contains(media))
      selectedMedia.remove(media);
    else
      selectedMedia.add(media);
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
        await _askGenre();
        break;
      case StepEnum.genres:
        await _askMedia();
        break;
      case StepEnum.media:
        await _askRating();
        break;
      case StepEnum.rating:
        messages.add(ChatMessage(
          sentBy: "robot",
          content: "That's all!! Thank you 👋",
        ));
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
  Future<void> answerGenres() async {
    String prefs = selectedGenres.join(", ");
    enableGenresSelection = false;

    messages.add(ChatMessage(
      sentBy: "user",
      content: "I'm interested in $prefs",
    ));

    _nextStep();
  }

  /// User select the medias
  @action
  Future<void> answerMedia() async {
    String prefs = selectedMedia.join(", ");
    enableMediaSelection = false;

    messages.add(ChatMessage(
      sentBy: "user",
      content: "I'm looking for $prefs",
    ));

    _nextStep();
  }

  /// User select the medias
  @action
  Future<void> answerRating(int rating) async {
    enableRatingSelection = false;

    messages.add(ChatMessage(
      sentBy: "user",
      content: "$rating",
    ));

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

  /// Robot asking the genres of the user.
  @action
  Future<void> _askGenre() async {
    await _switchTyping(duration: 500);
    enableGenresSelection = true;

    currentStep = StepEnum.genres;
  }

  /// Robot asking the media of the user.
  @action
  Future<void> _askMedia() async {
    await _switchTyping(duration: 500);
    messages.add(ChatMessage(
        sentBy: "robot",
        content: "How nice! Which types of media are you looking for?"));

    enableMediaSelection = true;

    currentStep = StepEnum.media;
  }

  /// Robot asking the rating of the user.
  @action
  Future<void> _askRating() async {
    await _switchTyping(duration: 500);
    messages.add(ChatMessage(
        sentBy: "robot",
        content: "That's interesting! Thank you for your answers."));
    await _switchTyping();
    messages.add(ChatMessage(
        sentBy: "robot",
        content:
            "At last, please rate the experience of talking to me from 1 to 5, with 5 being the best and 1 being the worst"));

    enableRatingSelection = true;
    currentStep = StepEnum.rating;
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
    await Future.delayed(Duration(milliseconds: duration));
    isTyping = !isTyping;
  }
}
