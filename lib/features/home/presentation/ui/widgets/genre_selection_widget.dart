import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class GenresSelection extends StatelessWidget {
  GenresSelection({Key? key}) : super(key: key);

  final store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Wrap(
          spacing: 4,
          children: store.genres
              .map(
                (genre) {
                  return Container(
                    child: ChoiceChip(
                      label: Text("${genre}"),
                      selected: store.selectedGenres.contains(genre),
                      onSelected: (bool value) {
                        store.onGenreTapped(genre);
                      },
                    ),
                  );
                },
              )
              .toList()
              .cast<Widget>(),
        ),
      ),
    );
  }
}
