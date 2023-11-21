import 'package:flutter/material.dart';

import '../../shared/component_login.dart';
import 'home_page_ietm.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
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
            Image.asset('assets/Ellipse 31 (1).png'),
            SizedBox(
              height: 15,
            ),
            Text(
              'Ammar Ahmed',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ammar@gmail.com',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            HomePageIetm(
              text: 'Edit Profile',
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
            SizedBox(
              height: 30,
            ),
            HomePageIetm(
              text: 'Password',
              onPressed: () {},
              icon: Icon(Icons.visibility_off),
            ),

            SizedBox(
              height: 30,
            ),
            HomePageIetm(
              text: 'Settings',
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: Color(0xFFFB5607)),),
                Text(
                  'Logout',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,color: Color(0xFFFB5607)),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_bank),
            label: 'Meal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }
}
