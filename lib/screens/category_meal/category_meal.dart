import 'package:flutter/material.dart';

import '../../shared/text_button_component.dart';
import 'container_ietm.dart';

class CategoryMeal extends StatelessWidget {
  const CategoryMeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
      children: [
          TextButtonComponents(
            textButton: 'Add Meal',
          ),
        SizedBox(
          height: 55,
        ),
          ContainerIetm(),
          SizedBox(
            height: 25,
          ),
          ContainerIetm(),
      ],
    ),
        ));
  }
}
