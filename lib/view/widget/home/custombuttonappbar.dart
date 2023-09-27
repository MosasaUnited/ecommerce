import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final Function()? onPressed;
  final String textButton;
  final IconData iconData;
  final Color colorItemSelected;
  const CustomButtonAppBar(
      {super.key,
      required this.textButton,
      required this.iconData,
      required this.onPressed,
      required this.colorItemSelected});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: colorItemSelected,
            ),
            Text(
              textButton,
              style: TextStyle(color: colorItemSelected),
            )
          ],
        ));
  }
}
