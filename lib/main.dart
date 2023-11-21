import 'package:chef_app/screens/change_language/change_language.dart';
import 'package:chef_app/screens/create_new_pasword_screen/create_new_password_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeLanguageScreen(),
    );
  }
}