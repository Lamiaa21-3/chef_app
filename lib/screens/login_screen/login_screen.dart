import 'package:chef_app/screens/create_new_pasword_screen/create_new_password_screen.dart';
import 'package:chef_app/screens/login_screen/text_button_login.dart';
import 'package:flutter/material.dart';

import '../../shared/text_button_component.dart';
import '../forget_password_screen/forget_password_screen.dart';
import '../../shared/component_login.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Center(
                  child: Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              )),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.orange,
              )),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextFormFieldComponent(
              label: 'E-mail',

            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextFormFieldComponent(
              label: 'Passwore',

            ),
          ),
          SizedBox(
            height: 20,
          ),

         TextButtonLogin(text: 'forget password ?', function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPasswordScreen(),
                  ),
                );
              }),
          TextButtonLogin(text: 'create new password ?', function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateNewPasswordScreen(),
              ),
            );
          }),

          SizedBox(
            height: 40,
          ),
          TextButtonComponents(
            textButton: 'Sign in ',
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account?',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign in ',
                    style: TextStyle(color: Colors.orange, fontSize: 16),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
