import 'package:flutter/material.dart';

class LatoText extends StatelessWidget {
   LatoText({Key? key, required this.latoText}) : super(key: key);
   final String latoText;

  @override
  Widget build(BuildContext context) {
    return   Text(
      '$latoText',
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: 'Lato'),
    );
  }
}
//Welcome to Chef App
