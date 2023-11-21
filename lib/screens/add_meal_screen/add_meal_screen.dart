import 'package:flutter/material.dart';

import '../../shared/component_login.dart';
import '../../shared/text_button_component.dart';

enum SingingCharacter { Number, Quantity }

class AddMealScreen extends StatefulWidget {
  const AddMealScreen({Key? key}) : super(key: key);

  @override
  State<AddMealScreen> createState() => _AddMealScreenState();
}

class _AddMealScreenState extends State<AddMealScreen> {
  SingingCharacter? _character = SingingCharacter.Number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Add Meal'),
        backgroundColor: Color(0xFFFA9A0C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(

            children: [
              Image.asset('assets/Ellipse 31.png'),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                label: 'Name',
              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                label: 'Price',
              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                label: 'Category',
              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                label: 'Descripition',
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      // selectedTileColor:Color(0xFFFB5607) ,

                      title: Text(
                        'Number',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      leading: Radio<SingingCharacter>(
                        activeColor: Color(0xFFFB5607),
                        value: SingingCharacter.Number,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      selectedTileColor: Color(0xFFFB5607),
                      title: const Text(
                        'Quantity',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      leading: Radio<SingingCharacter>(
                        activeColor: Color(0xFFFB5607),
                        // fillColor:
                        // MaterialStateColor.resolveWith((states) => Color(0xFFFB5607)),
                        value: SingingCharacter.Quantity,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              TextButtonComponents(
                textButton: 'Add Meal',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
