import 'package:chef_app/screens/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/lato_text.dart';
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
              LatoText(latoText: 'Welcome to Chef App',),
              SizedBox(
                height: 35,
              ),
             LatoText(latoText: 'Please choose your language'),
              SizedBox(
                height: 190,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => LogInScreen()));
                        },
                        child: ContainerChangeLanguage(
                          text: 'English',
                        )),
                    ContainerChangeLanguage(
                      text: 'العربية',
                    ),
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
