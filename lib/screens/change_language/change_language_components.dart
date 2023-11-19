import 'package:flutter/material.dart';

class ContainerChangeLanguage extends StatelessWidget {
   ContainerChangeLanguage({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
            '$text',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                color: Colors.white),
          )),
      width: 140,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
