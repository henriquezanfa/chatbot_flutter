import 'package:flutter/material.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/home_screen.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/message_widget.dart';

class MessagesListViewWidget extends StatelessWidget {
  const MessagesListViewWidget({
    Key? key,
    required this.messages,
  }) : super(key: key);

  final List<ChatMessage> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: messages.length,
      itemBuilder: (_, index) {
        final message = messages[index];
        bool isRobot = message.sentBy == "robot";

        bool showIcon = true;
        if (index > 0)
          showIcon = !(isRobot && messages[index - 1].sentBy == "robot");

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MessageWidget(
            isRobot: isRobot,
            message: message,
            showIcon: showIcon,
          ),
        );
      },
    );
  }
}
