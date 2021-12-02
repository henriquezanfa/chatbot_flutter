import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/core/theme/theme.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/home_screen.dart';

void main() {
  setup();

  runApp(ChatBotApp());
}

class ChatBotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Bot',
      theme: lightTheme,
      home: HomeScreen(),
    );
  }
}
