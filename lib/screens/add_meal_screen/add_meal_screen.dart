import 'package:chef_app/screens/category_meal/category_meal.dart';
import 'package:chef_app/shared/poppins_text.dart';
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
              Stack(
                children: [
                  Image.asset('assets/Ellipse 31.png'),
                  Positioned(
                      top: 110,
                      left: 110,

                      child: Image.asset('assets/bxs_message-square-edit.png'))
                ],
              ),

              SizedBox(height: 12,),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Name',
              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Price',
              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Category',
              ),
              SizedBox(height: 12,),
              TextFormFieldComponent(
                suffixIcon:null,
                label: 'Descripition',
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      // selectedTileColor:Color(0xFFFB5607) ,

                      title: PoppinsText(popText: 'Number',),
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
                      title: PoppinsText(popText: 'Quantity',),
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
                ontapButton: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryMeal()));
                },
                textButton: 'Add Meal',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
