import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MediaSelection extends StatelessWidget {
  MediaSelection({Key? key}) : super(key: key);

  final store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Wrap(
          spacing: 4,
          children: store.medias
              .map(
                (media) {
                  return Container(
                    child: ChoiceChip(
                      label: Text("${media}"),
                      selected: store.selectedMedia.contains(media),
                      onSelected: (bool value) {
                        store.onMediaTapped(media);
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
