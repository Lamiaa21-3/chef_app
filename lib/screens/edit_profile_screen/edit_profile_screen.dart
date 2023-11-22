import 'package:flutter/material.dart';

import '../../shared/component_login.dart';
import '../../shared/text_button_component.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Edit Profile'),
        backgroundColor: Color(0xFFFA9A0C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/Ellipse 31 (1).png'),
                  Positioned(
                      top: 80,
                      left: 80,

                      child: Image.asset('assets/bxs_message-square-edit.png'))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                label: 'Name',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                label: 'Phone',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                label: 'Brand Name',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                label: 'Minimum Charge',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                label: 'Description',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                label: ' Location',
              ),
              SizedBox(
                height: 15,
              ),
              TextButtonComponents(
                textButton: 'Update',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
