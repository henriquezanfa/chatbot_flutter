import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: DefaultTextStyle(
        style: TextStyle(
          fontSize: 14,
          color: theme.colorScheme.onBackground,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Hey! "),
            Text(
              "Let's set up your account!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
