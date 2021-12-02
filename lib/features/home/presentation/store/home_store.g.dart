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

  final _$startBotAsyncAction = AsyncAction('_HomeStore.startBot');

  @override
  Future<void> startBot() {
    return _$startBotAsyncAction.run(() => super.startBot());
  }

  final _$_addNextMessageAsyncAction =
      AsyncAction('_HomeStore._addNextMessage');

  @override
  Future<void> _addNextMessage({int duration = 1500}) {
    return _$_addNextMessageAsyncAction
        .run(() => super._addNextMessage(duration: duration));
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void _switchTyping() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore._switchTyping');
    try {
      return super._switchTyping();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
messages: ${messages},
isTyping: ${isTyping},
hasStarted: ${hasStarted}
    ''';
  }
}
