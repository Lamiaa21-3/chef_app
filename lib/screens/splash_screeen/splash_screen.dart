import 'package:chef_app/screens/change_language/change_language.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navagiateToHome();
  }
  navagiateToHome()async{
    await Future.delayed(Duration(milliseconds: 1500,),(){}
    );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChangeLanguageScreen()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFA9A0C),
      body: Padding(
        padding: const EdgeInsets.only(top: 250,left: 150),
        child: Column(
          children: [
            Image.asset('assets/chef.png'),
            SizedBox(
              height: 10,
            ),
            Text('Chef App',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w700,fontSize: 36),),
          ],
        ),
      ),
    );
  }
}
