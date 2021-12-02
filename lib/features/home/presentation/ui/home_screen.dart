import 'package:flutter/material.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/home_app_bar.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/messages_list_view_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/today_chip_widget.dart';

class ChatMessage {
  final String type;
  final String sentBy;
  final String content;

  ChatMessage({
    required this.type,
    required this.sentBy,
    required this.content,
  });
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final messages = <ChatMessage>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            TodayChipWidget(),
            MessagesListViewWidget(messages: messages),
            Expanded(child: Offstage()),
          ],
        ),
      ),
    );
  }
}
