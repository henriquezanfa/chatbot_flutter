import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/country_selection_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/gender_selection_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/input_text_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class UserAnswerWidget extends StatelessWidget {
  final store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        children: [
          if (store.showGenderButtons) GenderSelectionWidget(store: store),
          GestureDetector(
            onTap: () => selectCountry(context),
            child: InputTextWidget(),
          ),
        ],
      ),
    );
  }

  void selectCountry(BuildContext context) {
    if (store.enableCountrySelection) {
      showCupertinoModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return CountrySelectionWidget();
        },
      ).then((value) => store.answerCountry(value));
    }
  }
}
