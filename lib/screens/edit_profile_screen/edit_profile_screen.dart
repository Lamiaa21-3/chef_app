import 'package:flutter/material.dart';

import '../../shared/component_login.dart';
import '../../shared/stack_comonents.dart';
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
              StackComponet(),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Name',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Phone',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Brand Name',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Minimum Charge',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Description',
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldComponent(
                suffixIcon:null,
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
