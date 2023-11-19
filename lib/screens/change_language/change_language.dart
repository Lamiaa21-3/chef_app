import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'change_language_components.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset('assets/chef.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Welcome to Chef App',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato'),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Please choose your language ',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 190,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerChangeLanguage(text: 'English',),
                    ContainerChangeLanguage(text: 'العربية',),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
