import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  CustomBtn({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
