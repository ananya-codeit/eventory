import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homescreen.dart';
import 'favourites.dart';
import 'student_profile_view.dart';

class Categories extends StatefulWidget {
  static String id ='categories';
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
         title:Text("Categories"),
         flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF56E3D8),
                Color(0xFF139CFF)],

            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top:15),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: (){
                          print('true');
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('images/dance.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Dance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('images/technical.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Technical',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height:290,
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
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.pushNamed(context, Favourites.id);
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.pushNamed(context, StudentProfileView.id);
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),

      ),

    );
  }
}
