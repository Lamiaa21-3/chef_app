import 'package:flutter/material.dart';

import '../edit_profile_screen/edit_profile_screen.dart';

class HomePageIetm extends StatelessWidget {
  HomePageIetm(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.icon, required this.color})
      : super(key: key);

  final String text;
  final void Function()? onPressed;
  final Icon icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed:onPressed,
          icon: icon,
          color: color,
        ),
        Text(
          '$text',
          style: TextStyle(
              fontFamily: 'Urbanist',
              fontSize: 17,
              fontWeight: FontWeight.w600,color: color),
        ),
      ],
    );
  }
}
