import 'package:flutter/material.dart';

class SettinsScreen extends StatefulWidget {
  const SettinsScreen({Key? key}) : super(key: key);

  @override
  State<SettinsScreen> createState() => _SettinsScreenState();
}

class _SettinsScreenState extends State<SettinsScreen> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Settings'),
        backgroundColor: Color(0xFFFA9A0C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text(
              'العربية',
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontFamily: 'Lato', fontSize: 16),
            ),
            Spacer(),
            Switch(
                // This bool value toggles the switch.
                value: light,
                activeColor: Color(0xFFFA9A0C),
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    light = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
