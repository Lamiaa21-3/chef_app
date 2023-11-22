import 'dart:convert';

import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  TextFormFieldComponent({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
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
