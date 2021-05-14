import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
class SignUpScreen extends StatefulWidget {
  static String id ='sign_up_screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Center(
                child: Text(
                  'Eventory',
                  style: TextStyle(
                    fontFamily: 'Mystical Snow',
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.w500,
                  ),

                ),
              ),
            ),
            Image(image: AssetImage('images/rafiki.png'),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 100.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, SignUp.id);
                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.black),
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Center(
                    child: Text(
                      'Sign Up as a Student',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 100.0),
              child: GestureDetector(
                onTap: (){
                  print('yes');
                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.black),
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Center(
                    child: Text(
                      'Sign Up as a Society',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),


                ),
              ),
            ),



          ],
        ),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.black,



        ),
      ),
    );
  }
}
