import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 24,
      ),
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(vertical: 12),
          ),
          elevation: MaterialStateProperty.all<double>(8),
        ),
        child: Text(
          label.toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
