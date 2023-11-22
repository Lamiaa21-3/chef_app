import 'package:flutter/material.dart';

import '../screens/add_meal_screen/add_meal_screen.dart';
import '../screens/category_meal/category_meal.dart';
import '../screens/home_page_screen/home_page_screen.dart';

class TextButtonComponents extends StatelessWidget {
   TextButtonComponents({Key? key, required this.textButton, this.ontapButton}) : super(key: key);
 final String textButton;
 final void Function ()? ontapButton;
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(8)),
        child: TextButton(
          onPressed: ontapButton,
          child: Text(
            '$textButton',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 24),
          ),
        ));
  }
}
