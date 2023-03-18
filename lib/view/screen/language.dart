import 'package:flutter/material.dart';
import '../../core/constant/color.dart';
import '../widget/language/custombuttonlang.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Choose Language', style:Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 20,),
              CustomButtonLang(textButton: 'Ar',onPressed: (){}),
              CustomButtonLang(textButton: 'En',onPressed: (){}),
            ],
          ),
        ),
    );
  }
}
