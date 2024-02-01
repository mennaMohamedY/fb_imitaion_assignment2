import 'package:assignment2_part1/fb_home_page.dart';
import 'package:assignment2_part1/login_screen.dart';
import 'package:assignment2_part1/stories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes:{
        LoginScreen.routeName: (context)=>LoginScreen(),
        FBHomeScreen.routeName: (context)=>FBHomeScreen(),
        //Stories.routeName: (context)=>Stories()

      },


    );
  }
}


