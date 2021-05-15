import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'event_details_three.dart';
import 'societywelcome.dart';
class EventDetailsTwo extends StatefulWidget {
  static String id ='event_details_two';
  @override
  _EventDetailsTwoState createState() => _EventDetailsTwoState();
}

class _EventDetailsTwoState extends State<EventDetailsTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(

        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Event Details',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              height:200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),

            ),
            SizedBox(
              height:20,
            ),
            Container(
              alignment:Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Description',
                  textAlign:TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade900,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                maxLines: 17,
                style: TextStyle(

                  color: Colors.black,
                  fontWeight:FontWeight.w400,
                  fontSize: 20.0,
                ),
                cursorColor: Colors.black,
                cursorHeight: 25.0,
                decoration: InputDecoration(

                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 100.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, EventDetailsThree.id);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 50,
                  width: 30,
                  decoration: BoxDecoration(

                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF56E3D8),
                        Color(0xFF139CFF),
                      ],
                    ),

                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),


                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.pushNamed(context, SocietyWelcome.id);
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
          ],
        ),
      ),
    );
  }
}
