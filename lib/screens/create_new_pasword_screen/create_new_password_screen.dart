import 'package:flutter/material.dart';

import '../../shared/component_login.dart';
import '../../shared/text_button_component.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Create New Password '),
        backgroundColor: Color(0xFFFA9A0C),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90, top: 20),
                child: Image.asset('assets/lock 1.png',width: 200,height: 200,),
              ),
              SizedBox(height: 12,),
              Text(
                'Create new password',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato'),
              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                label: 'New password',

              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                label: 'Conform password',

              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                label: 'Code',

              ),
              SizedBox(height: 12,),
              TextButtonComponents(
                textButton: 'Reset Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
