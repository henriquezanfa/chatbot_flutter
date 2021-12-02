import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/button_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/home_app_bar.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/messages_list_view_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/today_chip_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/typing_indicator_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/user_answer_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ChatMessage {
  final String sentBy;
  final String content;

  ChatMessage({
    required this.sentBy,
    required this.content,
  });
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: HomeAppBar(),
        body: Observer(
          builder: (_) => !store.hasStarted ? buildStartButton() : buildQuiz(),
        ),
      ),
    );
  }

  Widget buildQuiz() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              TodayChipWidget(),
              MessagesListViewWidget(),
            ],
          ),
        ),
        TypingIndicator(showIndicator: store.isTyping),
        UserAnswerWidget(),
      ],
    );
  }

  Align buildStartButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: Container(
          width: double.infinity,
          child: ButtonWidget(
            label: "Start",
            onPressed: () => store.startBot(),
          ),
        ),
      ),
    );
  }
}
