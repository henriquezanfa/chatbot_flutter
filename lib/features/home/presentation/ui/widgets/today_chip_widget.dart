import 'package:flutter/material.dart';

class TodayChipWidget extends StatelessWidget {
  const TodayChipWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Container(
        child: Text("Today"),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: Theme.of(context).primaryColor.withOpacity(0.2),
        ),
      ),
    );
  }
}
