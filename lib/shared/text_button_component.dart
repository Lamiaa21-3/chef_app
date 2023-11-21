import 'package:flutter/material.dart';

import '../screens/add_meal_screen/add_meal_screen.dart';
import '../screens/category_meal/category_meal.dart';
import '../screens/home_page_screen/home_page_screen.dart';

class TextButtonComponents extends StatelessWidget {
   TextButtonComponents({Key? key, required this.textButton}) : super(key: key);
 final String textButton;
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(8)),
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageScreen()));
          },
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
