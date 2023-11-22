import 'dart:convert';

import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  TextFormFieldComponent({Key? key, required this.label,  this.suffixIcon}) : super(key: key);
  final String label;
final IconData?  suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
    suffixIcon: GestureDetector(
      onTap: (){},
        child:Icon(suffixIcon),

    ),
          label: Text('$label'),
          labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.indigo),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
