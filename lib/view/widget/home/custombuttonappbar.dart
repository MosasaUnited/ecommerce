import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final Function()? onPressed;
  final String textButton;
  final IconData iconData;
  final bool active;
  const CustomButtonAppBar(
      {super.key,
      required this.textButton,
      required this.iconData,
      required this.onPressed,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: active == true ? AppColor.primaryColor : Colors.black,
            ),
            Text(
              textButton,
              style: TextStyle(
                  color: active == true ? AppColor.primaryColor : Colors.black),
            )
          ],
        ));
  }
}
