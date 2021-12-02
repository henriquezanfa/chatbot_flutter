import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/message_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MessagesListViewWidget extends StatelessWidget {
  MessagesListViewWidget({
    Key? key,
  }) : super(key: key);

  final store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: store.messages.length,
        itemBuilder: (_, index) {
          final message = store.messages[index];
          bool isRobot = message.sentBy == "robot";

          bool showIcon = true;
          if (index > 0)
            showIcon =
                !(isRobot && store.messages[index - 1].sentBy == "robot");

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MessageWidget(
              isRobot: isRobot,
              message: message,
              showIcon: showIcon,
            ),
          );
        },
      ),
    );
  }
}
