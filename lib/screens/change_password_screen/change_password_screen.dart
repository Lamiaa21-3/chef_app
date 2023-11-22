import 'package:chef_app/shared/lato_text.dart';
import 'package:flutter/material.dart';

import '../../shared/component_login.dart';
import '../../shared/text_button_component.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Change Password'),
        backgroundColor: Color(0xFFFA9A0C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Image.asset('assets/lock 1.png',width: 200,height: 200,),
              ),
              SizedBox(
                height: 25,
              ),
             LatoText(latoText: 'Change password'),
              SizedBox(
                height: 25,
              ),
              TextFormFieldComponent(
                label: 'Old password',
                suffixIcon: Icons.visibility_off,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                label: 'New password',
                suffixIcon: Icons.visibility_off
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                label: 'Confirm New password',
                suffixIcon: Icons.visibility_off
              ),
              SizedBox(
                height: 15,
              ),
              TextButtonComponents(
                textButton: 'Reset Password',
              )
            ],
          ),
        ),
      ),
    );
  }
}
