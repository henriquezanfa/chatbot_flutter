import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/button_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/country_selection_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/gender_selection_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/genre_selection_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/input_text_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/media_selection_widget.dart';
import 'package:flutter_chatbot/features/home/presentation/ui/widgets/rating_selection.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class UserAnswerWidget extends StatelessWidget {
  final store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        children: [
          if (store.showGenderButtons)
            GenderSelectionWidget(store: store)
          else if (store.enableGenresSelection)
            GenresSelection()
          else if (store.enableMediaSelection)
            MediaSelection()
          else if (store.enableRatingSelection)
            RatingSelection(store: store),
          if (store.enableGenresSelection || store.enableMediaSelection)
            ConfirmButton(store: store)
          else
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

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    Key? key,
    required this.store,
  }) : super(key: key);

  final HomeStore store;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: ButtonWidget(
          label: "Confirm",
          onPressed: store.enableGenresSelection
              ? store.answerGenres
              : store.answerMedia,
        ),
      ),
    );
  }
}
