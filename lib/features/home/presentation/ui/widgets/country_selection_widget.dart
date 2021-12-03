import 'package:flutter/material.dart';

class CountrySelectionWidget extends StatefulWidget {
  const CountrySelectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  _CountrySelectionWidgetState createState() => _CountrySelectionWidgetState();
}

class _CountrySelectionWidgetState extends State<CountrySelectionWidget> {
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    focusNode.requestFocus();
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
          Expanded(
            child: SafeArea(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).pop("Name"),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8.0),
                      child: Text("Name"),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
