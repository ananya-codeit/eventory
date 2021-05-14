import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login.dart';
import 'signup.dart';
import 'signup1.dart';
import 'societylogin.dart';
import 'homescreen.dart';
import 'societywelcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        SignUp.id:(context)=>SignUp(),
        SignUpScreen.id:(context)=>SignUpScreen(),
        SocietySignUP.id:(context)=>SocietySignUP(),
        HomeScreen.id:(context)=>HomeScreen(),
        SocietyWelcome.id:(context)=>SocietyWelcome(),
      },
    );
  }
}

