import 'package:flutter/material.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/button_widget.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    Key? key,
    required this.store,
  }) : super(key: key);

  final HomeStore store;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: double.infinity,
          child: ButtonWidget(
            label: 'Female',
            onPressed: () => store.answerGender("Female"),
          ),
        ),
        Container(
          width: double.infinity,
          child: ButtonWidget(
            label: 'Male',
            onPressed: () => store.answerGender("Male"),
          ),
        ),
        Container(
          width: double.infinity,
          child: ButtonWidget(
            label: 'Prefer not to say',
            onPressed: () => store.answerGender("Prefer not to say"),
          ),
        ),
      ],
    );
  }
}
