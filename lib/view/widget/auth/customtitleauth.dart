import 'package:flutter/material.dart';

class CustomTitleAuth extends StatelessWidget {
  final String text;

  const CustomTitleAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
