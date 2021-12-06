import 'package:flutter/material.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';

class RatingSelection extends StatelessWidget {
  const RatingSelection({
    Key? key,
    required this.store,
  }) : super(key: key);

  final HomeStore store;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
        buildItem(1),
        buildItem(2),
        buildItem(3),
        buildItem(4),
        buildItem(5),
      ],
    );
  }

  Container buildItem(int val) {
    return Container(
      child: ChoiceChip(
        label: Text("$val"),
        selected: store.rating == 1,
        onSelected: (bool value) {
          store.answerRating(val);
          // store.onMediaTapped(media);
        },
      ),
    );
  }
}
