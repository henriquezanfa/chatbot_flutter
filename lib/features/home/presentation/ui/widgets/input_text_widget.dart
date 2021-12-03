import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';

class InputTextWidget extends StatelessWidget {
  InputTextWidget({Key? key}) : super(key: key);

  final store = getIt<HomeStore>();
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: theme.appBarTheme.backgroundColor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: TextField(
            focusNode: store.textInputFocusNode,
            onEditingComplete: answerName,
            enabled: store.textInputEnable,
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Tap here to answer',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: theme.colorScheme.onBackground.withOpacity(0.1),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: theme.primaryColor),
              ),
              suffixIcon: GestureDetector(
                onTap: answerName,
                child: Icon(Icons.send_outlined),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  void answerName() {
    store.answerName(controller.text);
    controller.text = "";
  }
}
