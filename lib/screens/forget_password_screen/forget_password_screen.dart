import 'package:chef_app/shared/lato_text.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/lock 1.png'),
              SizedBox(height: 18,),

             LatoText(latoText: 'Enter Your mail and we will send you code to rest your password'),
              SizedBox(height: 15,),
              TextFormFieldComponent(
                label: 'E-mail',
                suffixIcon: null
              ),
              SizedBox(height: 15,),
              TextButtonComponents(
                textButton: 'Send Code',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
