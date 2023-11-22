import 'package:flutter/material.dart';
class TextHomePage extends StatelessWidget {
   TextHomePage({Key? key, required this.textHome}) : super(key: key);
 final String textHome;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$textHome',
      style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 24,
          fontWeight: FontWeight.w700),
    );
  }
}
//ammar@gmail.com