import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 20,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.bold),
    );
  }
}
