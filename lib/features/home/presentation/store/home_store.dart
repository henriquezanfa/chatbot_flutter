import 'package:flutter/cupertino.dart';
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
  bool textInputEnable = true;

  @observable
  FocusNode textInputFocusNode = FocusNode();

  @action
  Future<void> startBot() async {
    hasStarted = true;
    await _askName();
    textInputFocusNode.requestFocus();
  }

  @action
  Future<void> answerName(String name) async {
    messages.add(ChatMessage(sentBy: "user", content: name));
    textInputEnable = false;

    await _switchTyping();
    messages.add(ChatMessage(sentBy: "robot", content: "Hello, $name!"));
    await _switchTyping(duration: 500);
    messages
        .add(ChatMessage(sentBy: "robot", content: "Now, tell me your gender"));
  }

  @action
  Future<void> _askName() async {
    await _switchTyping();
    messages.add(_messages[0]);
    await _switchTyping(duration: 2000);
    messages.add(_messages[1]);
  }

  @action
  Future<void> _switchTyping({int duration = 1500}) async {
    isTyping = !isTyping;
    await Future.delayed(Duration(milliseconds: duration));
    isTyping = !isTyping;
  }
}
