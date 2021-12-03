import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/gender_selection_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/input_text_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class UserAnswerWidget extends StatelessWidget {
  final store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        children: [
          if (store.showGenderButtons) GenderSelectionWidget(store: store),
          InputTextWidget(),
        ],
      ),
    );
  }
}
