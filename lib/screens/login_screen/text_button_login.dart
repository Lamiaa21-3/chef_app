import 'package:flutter/material.dart';

import '../forget_password_screen/forget_password_screen.dart';
class TextButtonLogin extends StatelessWidget {
   TextButtonLogin({Key? key, required this.text, required this.function}) : super(key: key);
    final String text;
    final Function function;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () {
      function;
      },
      child: Text('$text',
          style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.grey)),
    );
  }
}
