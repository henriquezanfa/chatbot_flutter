import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/core/theme/theme.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setup();
  await Firebase.initializeApp();

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
