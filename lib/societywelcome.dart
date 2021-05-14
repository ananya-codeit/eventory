import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SocietyWelcome extends StatefulWidget {
  static String id ='society_welcome';
  @override
  _SocietyWelcomeState createState() => _SocietyWelcomeState();
}

class _SocietyWelcomeState extends State<SocietyWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:Column(
          children:[
            Container(
              child: Padding(
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
            ),
            Container(
              child: Center(
                child: Text(
                  'Welcome',
                  style: GoogleFonts.pattaya(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Image(image: AssetImage('images/s1.png'),),
            SizedBox(
              height:30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10,horizontal:10),
              child: GestureDetector(
                onTap: (){
                  print('yes');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                   color:Colors.white,
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Center(
                    child: Text(
                      'Add Event',
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
              padding: const EdgeInsets.symmetric(vertical:10,horizontal:10),
              child: GestureDetector(
                onTap: (){
                  print('yes');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Center(
                    child: Text(
                      'Edit Event Details',
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
              padding: const EdgeInsets.symmetric(vertical:10,horizontal:10),
              child: GestureDetector(
                onTap: (){
                  print('yes');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Center(
                    child: Text(
                      'Delete Event',
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
            SizedBox(
              height:41,
            ),
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      print('yes');
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      print('yes');
                    },
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      print('yes');
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      print('yes');
                    },
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      print('yes');
                    },
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
              height:70,
              width:double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF56E3D8),
                    Color(0xFF139CFF),
                  ],
                ),
              ),
            ),

          ]
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
      )

    );
  }
}
