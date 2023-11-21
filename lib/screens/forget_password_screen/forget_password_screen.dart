import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/text_button_component.dart';
import '../change_language/change_language_components.dart';
import '../../shared/component_login.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Forget Password'),
        backgroundColor: Color(0xFFFA9A0C),
      ),
      body: Column(
        children: [
          Image.asset('assets/lock 1.png'),
          Text(
            'Enter Your mail and we will send you code to rest your password',
            style: TextStyle(fontFamily: 'Lato',fontSize: 16,fontWeight: FontWeight.w400),
          ),
          TextFormFieldComponent(label: 'E-mail',),
          TextButtonComponents(textButton: 'Send Code',),
        ],
      ),
    );
  }
}
