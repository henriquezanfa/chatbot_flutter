import 'package:flutter/material.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/home_screen.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
    required this.isRobot,
    required this.message,
    this.showIcon = true,
  }) : super(key: key);

  final bool isRobot;
  final ChatMessage message;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment:
          isRobot ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        isRobot
            ? Opacity(
                opacity: showIcon ? 1 : 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.computer,
                      size: 20,
                    ),
                  ),
                ),
              )
            : Offstage(),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isRobot ? 0 : 20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(isRobot ? 20 : 0),
              ),
              color: isRobot ? Colors.white : primaryColor,
              boxShadow: [
                BoxShadow(
                  color: isRobot ? Colors.black12 : Colors.black26,
                  spreadRadius: 0.5,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Align(
                alignment:
                    isRobot ? Alignment.centerLeft : Alignment.centerRight,
                child: Text(
                  message.content,
                  style: TextStyle(
                    color: isRobot
                        ? Theme.of(context).colorScheme.onBackground
                        : Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
