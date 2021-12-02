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

  final _$_askNameAsyncAction = AsyncAction('_HomeStore._askName');

  @override
  Future<void> _askName() {
    return _$_askNameAsyncAction.run(() => super._askName());
  }

  final _$_switchTypingAsyncAction = AsyncAction('_HomeStore._switchTyping');

  @override
  Future<void> _switchTyping({int duration = 1500}) {
    return _$_switchTypingAsyncAction
        .run(() => super._switchTyping(duration: duration));
  }

  @override
  String toString() {
    return '''
messages: ${messages},
isTyping: ${isTyping},
hasStarted: ${hasStarted},
textInputEnable: ${textInputEnable},
textInputFocusNode: ${textInputFocusNode}
    ''';
  }
}
