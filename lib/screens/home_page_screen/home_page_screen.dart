import 'package:chef_app/screens/add_meal_screen/add_meal_screen.dart';
import 'package:chef_app/screens/change_password_screen/change_password_screen.dart';
import 'package:chef_app/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:chef_app/screens/home_page_screen/text_home_page.dart';
import 'package:chef_app/screens/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';

import '../../shared/component_login.dart';
import '../../shared/stack_comonents.dart';
import 'home_page_ietm.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMealScreen()));
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 15),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StackComponet(),
            SizedBox(
              height: 15,
            ),
            TextHomePage(
              textHome: 'Ammar Ahmed',
            ),
            SizedBox(
              height: 10,
            ),
            TextHomePage(
              textHome: 'ammar@gmail.com',
            ),
            HomePageIetm(
              text: 'Edit Profile',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfileScreen()));
              },
              icon: Icon(Icons.person), color: Colors.black,
            ),
            SizedBox(
              height: 30,
            ),
            HomePageIetm(
              text: 'Password',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePasswordScreen()));
              },
              icon: Icon(Icons.visibility_off),
              color: Colors.black,
            ),
            SizedBox(
              height: 30,
            ),
            HomePageIetm(
              text: 'Settings',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettinsScreen()));
              },
              icon: Icon(Icons.settings),
              color: Colors.black,
            ),
            SizedBox(
              height: 30,
            ),
            HomePageIetm(
              text: 'Logout',
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.logout),
              color: Color(0xFFFB5607),
            ),


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment_bank,
              weight: 24,
            ),
            label: 'Meal',
          ),
          BottomNavigationBarItem(

            icon: Icon(
              Icons.person_2_outlined,
              weight: 24,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
        unselectedLabelStyle: TextStyle(
            fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 12),
        selectedLabelStyle: TextStyle(
            fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 12),
      ),
    );
  }
}
