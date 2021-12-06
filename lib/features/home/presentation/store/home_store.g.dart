// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$messagesAtom = Atom(name: '_HomeStore.messages');

  @override
  ObservableList<ChatMessage> get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(ObservableList<ChatMessage> value) {
    _$messagesAtom.reportWrite(value, super.messages, () {
      super.messages = value;
    });
  }

  final _$isTypingAtom = Atom(name: '_HomeStore.isTyping');

  @override
  bool get isTyping {
    _$isTypingAtom.reportRead();
    return super.isTyping;
  }

  @override
  set isTyping(bool value) {
    _$isTypingAtom.reportWrite(value, super.isTyping, () {
      super.isTyping = value;
    });
  }

  final _$hasStartedAtom = Atom(name: '_HomeStore.hasStarted');

  @override
  bool get hasStarted {
    _$hasStartedAtom.reportRead();
    return super.hasStarted;
  }

  @override
  set hasStarted(bool value) {
    _$hasStartedAtom.reportWrite(value, super.hasStarted, () {
      super.hasStarted = value;
    });
  }

  final _$showGenderButtonsAtom = Atom(name: '_HomeStore.showGenderButtons');

  @override
  bool get showGenderButtons {
    _$showGenderButtonsAtom.reportRead();
    return super.showGenderButtons;
  }

  @override
  set showGenderButtons(bool value) {
    _$showGenderButtonsAtom.reportWrite(value, super.showGenderButtons, () {
      super.showGenderButtons = value;
    });
  }

  final _$enableCountrySelectionAtom =
      Atom(name: '_HomeStore.enableCountrySelection');

  @override
  bool get enableCountrySelection {
    _$enableCountrySelectionAtom.reportRead();
    return super.enableCountrySelection;
  }

  @override
  set enableCountrySelection(bool value) {
    _$enableCountrySelectionAtom
        .reportWrite(value, super.enableCountrySelection, () {
      super.enableCountrySelection = value;
    });
  }

  final _$enableGenresSelectionAtom =
      Atom(name: '_HomeStore.enableGenresSelection');

  @override
  bool get enableGenresSelection {
    _$enableGenresSelectionAtom.reportRead();
    return super.enableGenresSelection;
  }

  @override
  set enableGenresSelection(bool value) {
    _$enableGenresSelectionAtom.reportWrite(value, super.enableGenresSelection,
        () {
      super.enableGenresSelection = value;
    });
  }

  final _$enableMediaSelectionAtom =
      Atom(name: '_HomeStore.enableMediaSelection');

  @override
  bool get enableMediaSelection {
    _$enableMediaSelectionAtom.reportRead();
    return super.enableMediaSelection;
  }

  @override
  set enableMediaSelection(bool value) {
    _$enableMediaSelectionAtom.reportWrite(value, super.enableMediaSelection,
        () {
      super.enableMediaSelection = value;
    });
  }

  final _$enableRatingSelectionAtom =
      Atom(name: '_HomeStore.enableRatingSelection');

  @override
  bool get enableRatingSelection {
    _$enableRatingSelectionAtom.reportRead();
    return super.enableRatingSelection;
  }

  @override
  set enableRatingSelection(bool value) {
    _$enableRatingSelectionAtom.reportWrite(value, super.enableRatingSelection,
        () {
      super.enableRatingSelection = value;
    });
  }

  final _$textInputEnableAtom = Atom(name: '_HomeStore.textInputEnable');

  @override
  bool get textInputEnable {
    _$textInputEnableAtom.reportRead();
    return super.textInputEnable;
  }

  @override
  set textInputEnable(bool value) {
    _$textInputEnableAtom.reportWrite(value, super.textInputEnable, () {
      super.textInputEnable = value;
    });
  }

  final _$textInputFocusNodeAtom = Atom(name: '_HomeStore.textInputFocusNode');

  @override
  FocusNode get textInputFocusNode {
    _$textInputFocusNodeAtom.reportRead();
    return super.textInputFocusNode;
  }

  @override
  set textInputFocusNode(FocusNode value) {
    _$textInputFocusNodeAtom.reportWrite(value, super.textInputFocusNode, () {
      super.textInputFocusNode = value;
    });
  }

  final _$ratingAtom = Atom(name: '_HomeStore.rating');

  @override
  int get rating {
    _$ratingAtom.reportRead();
    return super.rating;
  }

  @override
  set rating(int value) {
    _$ratingAtom.reportWrite(value, super.rating, () {
      super.rating = value;
    });
  }

  final _$currentStepAtom = Atom(name: '_HomeStore.currentStep');

  @override
  StepEnum get currentStep {
    _$currentStepAtom.reportRead();
    return super.currentStep;
  }

  @override
  set currentStep(StepEnum value) {
    _$currentStepAtom.reportWrite(value, super.currentStep, () {
      super.currentStep = value;
    });
  }

  final _$filteredCountriesAtom = Atom(name: '_HomeStore.filteredCountries');

  @override
  ObservableList<dynamic> get filteredCountries {
    _$filteredCountriesAtom.reportRead();
    return super.filteredCountries;
  }

  @override
  set filteredCountries(ObservableList<dynamic> value) {
    _$filteredCountriesAtom.reportWrite(value, super.filteredCountries, () {
      super.filteredCountries = value;
    });
  }

  final _$selectedGenresAtom = Atom(name: '_HomeStore.selectedGenres');

  @override
  ObservableList<dynamic> get selectedGenres {
    _$selectedGenresAtom.reportRead();
    return super.selectedGenres;
  }

  @override
  set selectedGenres(ObservableList<dynamic> value) {
    _$selectedGenresAtom.reportWrite(value, super.selectedGenres, () {
      super.selectedGenres = value;
    });
  }

  final _$selectedMediaAtom = Atom(name: '_HomeStore.selectedMedia');

  @override
  ObservableList<dynamic> get selectedMedia {
    _$selectedMediaAtom.reportRead();
    return super.selectedMedia;
  }

  @override
  set selectedMedia(ObservableList<dynamic> value) {
    _$selectedMediaAtom.reportWrite(value, super.selectedMedia, () {
      super.selectedMedia = value;
    });
  }

  final _$genresAtom = Atom(name: '_HomeStore.genres');

  @override
  ObservableList<dynamic> get genres {
    _$genresAtom.reportRead();
    return super.genres;
  }

  @override
  set genres(ObservableList<dynamic> value) {
    _$genresAtom.reportWrite(value, super.genres, () {
      super.genres = value;
    });
  }

  final _$mediasAtom = Atom(name: '_HomeStore.medias');

  @override
  ObservableList<dynamic> get medias {
    _$mediasAtom.reportRead();
    return super.medias;
  }

  @override
  set medias(ObservableList<dynamic> value) {
    _$mediasAtom.reportWrite(value, super.medias, () {
      super.medias = value;
    });
  }

  final _$startBotAsyncAction = AsyncAction('_HomeStore.startBot');

  @override
  Future<void> startBot() {
    return _$startBotAsyncAction.run(() => super.startBot());
  }

  final _$answerNameAsyncAction = AsyncAction('_HomeStore.answerName');

  @override
  Future<void> answerName(String name) {
    return _$answerNameAsyncAction.run(() => super.answerName(name));
  }

  final _$answerGenderAsyncAction = AsyncAction('_HomeStore.answerGender');

  @override
  Future<void> answerGender(String gender) {
    return _$answerGenderAsyncAction.run(() => super.answerGender(gender));
  }

  final _$answerCountryAsyncAction = AsyncAction('_HomeStore.answerCountry');

  @override
  Future<void> answerCountry(String country) {
    return _$answerCountryAsyncAction.run(() => super.answerCountry(country));
  }

  final _$answerGenresAsyncAction = AsyncAction('_HomeStore.answerGenres');

  @override
  Future<void> answerGenres() {
    return _$answerGenresAsyncAction.run(() => super.answerGenres());
  }

  final _$answerMediaAsyncAction = AsyncAction('_HomeStore.answerMedia');

  @override
  Future<void> answerMedia() {
    return _$answerMediaAsyncAction.run(() => super.answerMedia());
  }

  final _$answerRatingAsyncAction = AsyncAction('_HomeStore.answerRating');

  @override
  Future<void> answerRating(int rating) {
    return _$answerRatingAsyncAction.run(() => super.answerRating(rating));
  }

  final _$_askNameAsyncAction = AsyncAction('_HomeStore._askName');

  @override
  Future<void> _askName() {
    return _$_askNameAsyncAction.run(() => super._askName());
  }

  final _$_askGenderAsyncAction = AsyncAction('_HomeStore._askGender');

  @override
  Future<void> _askGender() {
    return _$_askGenderAsyncAction.run(() => super._askGender());
  }

  final _$_askCountryAsyncAction = AsyncAction('_HomeStore._askCountry');

  @override
  Future<void> _askCountry() {
    return _$_askCountryAsyncAction.run(() => super._askCountry());
  }

  final _$_askGenreAsyncAction = AsyncAction('_HomeStore._askGenre');

  @override
  Future<void> _askGenre() {
    return _$_askGenreAsyncAction.run(() => super._askGenre());
  }

  final _$_askMediaAsyncAction = AsyncAction('_HomeStore._askMedia');

  @override
  Future<void> _askMedia() {
    return _$_askMediaAsyncAction.run(() => super._askMedia());
  }

  final _$_askRatingAsyncAction = AsyncAction('_HomeStore._askRating');

  @override
  Future<void> _askRating() {
    return _$_askRatingAsyncAction.run(() => super._askRating());
  }

  final _$searchCountriesAsyncAction =
      AsyncAction('_HomeStore.searchCountries');

  @override
  Future<void> searchCountries(String? search) {
    return _$searchCountriesAsyncAction
        .run(() => super.searchCountries(search));
  }

  final _$_switchTypingAsyncAction = AsyncAction('_HomeStore._switchTyping');

  @override
  Future<void> _switchTyping({int duration = 1500}) {
    return _$_switchTypingAsyncAction
        .run(() => super._switchTyping(duration: duration));
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void onGenreTapped(String genre) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.onGenreTapped');
    try {
      return super.onGenreTapped(genre);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onMediaTapped(String media) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.onMediaTapped');
    try {
      return super.onMediaTapped(media);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
messages: ${messages},
isTyping: ${isTyping},
hasStarted: ${hasStarted},
showGenderButtons: ${showGenderButtons},
enableCountrySelection: ${enableCountrySelection},
enableGenresSelection: ${enableGenresSelection},
enableMediaSelection: ${enableMediaSelection},
enableRatingSelection: ${enableRatingSelection},
textInputEnable: ${textInputEnable},
textInputFocusNode: ${textInputFocusNode},
rating: ${rating},
currentStep: ${currentStep},
filteredCountries: ${filteredCountries},
selectedGenres: ${selectedGenres},
selectedMedia: ${selectedMedia},
genres: ${genres},
medias: ${medias}
    ''';
  }
}
