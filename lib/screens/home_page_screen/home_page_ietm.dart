import 'package:flutter/material.dart';

class HomePageIetm extends StatelessWidget {
   HomePageIetm({Key? key, required this.text, required this.onPressed, required this.icon}) : super(key: key);
 final String  text;
 final void onPressed;
 final Icon icon;

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        IconButton(onPressed: (){}, icon: icon,),
        Text(
          '$text',
          style: TextStyle(
              fontFamily: 'Urbanist',
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
