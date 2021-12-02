import 'package:flutter_chatbot/features/home/presentation/ui/home_screen.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

final _messages = [
  ChatMessage(sentBy: "robot", content: "Hi! Let's start our quiz."),
  ChatMessage(sentBy: "robot", content: "First, tell us your name"),
];

abstract class _HomeStore with Store {
  @observable
  ObservableList<ChatMessage> messages = ObservableList();

  @observable
  bool isTyping = false;

  @observable
  bool hasStarted = false;

  @action
  Future<void> startBot() async {
    hasStarted = true;
    await _addNextMessage(duration: 1000);
    await _addNextMessage();
  }

  @action
  Future<void> _addNextMessage({int duration = 1500}) async {
    _switchTyping();
    await Future.delayed(Duration(milliseconds: duration));
    _switchTyping();
    messages.add(_messages[messages.length]);
  }

  @action
  void _switchTyping() {
    isTyping = !isTyping;
  }
}
