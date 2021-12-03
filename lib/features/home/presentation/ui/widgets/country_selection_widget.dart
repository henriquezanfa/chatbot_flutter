import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/di/di.dart';
import 'package:flutter_chatbot/features/home/presentation/store/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CountrySelectionWidget extends StatefulWidget {
  const CountrySelectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  _CountrySelectionWidgetState createState() => _CountrySelectionWidgetState();
}

class _CountrySelectionWidgetState extends State<CountrySelectionWidget> {
  final store = getIt<HomeStore>();
  final focusNode = FocusNode();
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    focusNode.requestFocus();

    controller.addListener(() {
      store.searchCountries(controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: 'I was born in...',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.colorScheme.onBackground.withOpacity(0.1),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: theme.primaryColor),
                ),
                suffixIcon: GestureDetector(
                  child: Icon(Icons.search),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Observer(builder: (_) {
            return Expanded(
              child: SafeArea(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: store.filteredCountries.length,
                  itemBuilder: (_, index) {
                    final name = store.filteredCountries[index].name;

                    return GestureDetector(
                      onTap: () => Navigator.of(context).pop(name),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8.0),
                        child: Text(name),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
