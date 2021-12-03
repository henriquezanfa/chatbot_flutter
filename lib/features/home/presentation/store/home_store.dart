import 'package:flutter/cupertino.dart';
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
  @observable
  ObservableList<ChatMessage> messages = ObservableList();

  @observable
  bool isTyping = false;

  @observable
  bool hasStarted = false;

  @observable
  bool showGenderButtons = false;

  @observable
  bool textInputEnable = true;

  @observable
  FocusNode textInputFocusNode = FocusNode();

  @observable
  StepEnum currentStep = StepEnum.name;

  @action
  Future<void> startBot() async {
    hasStarted = true;
    await _askName();
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
        // TODO: Handle this case.
        break;
      case StepEnum.preferences:
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

  /// User tells the name and robot says Hello.
  @action
  Future<void> answerGender(String gender) async {
    messages.add(ChatMessage(sentBy: "user", content: gender));
    showGenderButtons = false;

    await _switchTyping();
    messages.add(ChatMessage(sentBy: "robot", content: "Great!"));

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

  /// Robot asking the gender of the user.
  @action
  Future<void> _askCountry() async {
    await _switchTyping(duration: 500);
    messages.add(ChatMessage(sentBy: "robot", content: "Where were you born?"));
    textInputEnable = true;

    currentStep = StepEnum.country;
  }

  @action
  Future<void> _switchTyping({int duration = 1500}) async {
    isTyping = !isTyping;
    await Future.delayed(Duration(milliseconds: 1));
    isTyping = !isTyping;
  }
}
