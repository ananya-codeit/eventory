import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'event_details_two.dart';
import 'societywelcome.dart';
import 'societyprofileview.dart';

class EventDetails extends StatefulWidget {
  static String id ='event_details';
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
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
                  'Name of the Society',
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
            Container(
              alignment:Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Event Name',
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
            Container(
              alignment:Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      'Starting Date',
                      textAlign:TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade900,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
              child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("${selectedDate.toLocal()}".split(' ')[0],
                        style:TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.w400,

                        ),
                        ),
                      ),
                      SizedBox(
                        width:200,
                      ),
                      GestureDetector(
                        onTap: () => _selectDate(context),
                        child: Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                          size: 40.0,
                        ),
                      ),
                    ],
                  ),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    border: Border.all(color:Colors.black),
                    borderRadius: BorderRadius.circular(30),
              ),
            ),
            ),
            Container(
              alignment:Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      'Ending Date',
                      textAlign:TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade900,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("${selectedDate.toLocal()}".split(' ')[0],
                        style:TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.w400,

                        ),
                      ),
                    ),
                    SizedBox(
                      width:200,
                    ),
                    GestureDetector(
                      onTap: () => _selectDate(context),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Container(
              alignment:Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Event Category',
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
                  Navigator.pushNamed(context, EventDetailsTwo.id);
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
              height:6,
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
                      Navigator.pushNamed(context, SocietyProfileView.id);
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
