import 'package:eventaholic/splash_screen.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login.dart';
import 'signup.dart';
import 'signup1.dart';
import 'societylogin.dart';
import 'homescreen.dart';
import 'societywelcome.dart';
import 'splash_screen.dart';
import 'event_details.dart';
import 'event_details_two.dart';
import 'event_details_three.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'event_tap_info.dart';
import 'favourites.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await FirebaseAuth.instance.useEmulator('http://localhost:9099');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=>SplashScreen(),
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        SignUp.id:(context)=>SignUp(),
        SignUpScreen.id:(context)=>SignUpScreen(),
        SocietySignUP.id:(context)=>SocietySignUP(),
        HomeScreen.id:(context)=>HomeScreen(),
        SocietyWelcome.id:(context)=>SocietyWelcome(),
        EventDetails.id:(context)=>EventDetails(),
        EventDetailsTwo.id:(context)=>EventDetailsTwo(),
        EventDetailsThree.id:(context)=>EventDetailsThree(),
        EventTapInfo.id:(context)=>EventTapInfo(),
        Favourites.id:(context)=>Favourites(),
      },
    );
  }
}


