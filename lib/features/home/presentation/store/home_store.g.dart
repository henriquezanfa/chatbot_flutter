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

  final _$enablePreferencesSelectionAtom =
      Atom(name: '_HomeStore.enablePreferencesSelection');

  @override
  bool get enablePreferencesSelection {
    _$enablePreferencesSelectionAtom.reportRead();
    return super.enablePreferencesSelection;
  }

  @override
  set enablePreferencesSelection(bool value) {
    _$enablePreferencesSelectionAtom
        .reportWrite(value, super.enablePreferencesSelection, () {
      super.enablePreferencesSelection = value;
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

  final _$selectedPreferenceAtom = Atom(name: '_HomeStore.selectedPreference');

  @override
  ObservableList<dynamic> get selectedPreference {
    _$selectedPreferenceAtom.reportRead();
    return super.selectedPreference;
  }

  @override
  set selectedPreference(ObservableList<dynamic> value) {
    _$selectedPreferenceAtom.reportWrite(value, super.selectedPreference, () {
      super.selectedPreference = value;
    });
  }

  final _$preferencesAtom = Atom(name: '_HomeStore.preferences');

  @override
  ObservableList<dynamic> get preferences {
    _$preferencesAtom.reportRead();
    return super.preferences;
  }

  @override
  set preferences(ObservableList<dynamic> value) {
    _$preferencesAtom.reportWrite(value, super.preferences, () {
      super.preferences = value;
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

  final _$answerPreferencesAsyncAction =
      AsyncAction('_HomeStore.answerPreferences');

  @override
  Future<void> answerPreferences() {
    return _$answerPreferencesAsyncAction.run(() => super.answerPreferences());
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

  final _$_askPreferencesAsyncAction =
      AsyncAction('_HomeStore._askPreferences');

  @override
  Future<void> _askPreferences() {
    return _$_askPreferencesAsyncAction.run(() => super._askPreferences());
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
  void onPreferencesTapped(String preference) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.onPreferencesTapped');
    try {
      return super.onPreferencesTapped(preference);
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
enablePreferencesSelection: ${enablePreferencesSelection},
textInputEnable: ${textInputEnable},
textInputFocusNode: ${textInputFocusNode},
currentStep: ${currentStep},
filteredCountries: ${filteredCountries},
selectedPreference: ${selectedPreference},
preferences: ${preferences}
    ''';
  }
}
