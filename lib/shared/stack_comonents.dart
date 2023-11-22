import 'package:flutter/material.dart';
class StackComponet extends StatelessWidget {
  const StackComponet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset('assets/Ellipse 31 (1).png'),
        Positioned(
            top: 80,
            left: 80,

            child: Image.asset('assets/bxs_message-square-edit.png'))
      ],
    );
  }
}
