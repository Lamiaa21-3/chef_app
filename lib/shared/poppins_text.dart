import 'package:flutter/material.dart';
class PoppinsText extends StatelessWidget {
   PoppinsText({Key? key, required this.popText}) : super(key: key);
  final String popText;

  @override
  Widget build(BuildContext context) {
    return  Text(
        '$popText',
        style: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        color: Colors.grey,
    )
    );
  }
}
//Don’t have an account?
