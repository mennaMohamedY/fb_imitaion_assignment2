

import 'package:assignment2_part1/fb_home_page.dart';
import 'package:assignment2_part1/stories.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  static const String routeName="LoginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Assignment #2"),
    backgroundColor: Color(0xFF3B5999)),
    backgroundColor: Color(0xFF3B5999),
     body: Column(

       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Container(margin: EdgeInsets.only(top: 92),
           child: Icon(Icons.facebook, color: Colors.white, size: 90,),),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 42,vertical: 12),
         child: TextFormField(
           style: TextStyle(color: Colors.white,fontSize: 22),
           decoration: InputDecoration(fillColor: Colors.white
           ,hintText: "Email or Phone",hintStyle: TextStyle(color: Color(0xFFAAB9DA),),
             labelStyle: TextStyle(color: Color(0xFFAAB9DA)),
    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, style:BorderStyle.solid) ),

            )
         ),),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 42,vertical: 12),
           child: TextFormField(
               style: TextStyle(color: Colors.white,fontSize: 22),
               decoration: InputDecoration(fillColor: Colors.white
                 ,hintText: "Password",hintStyle: TextStyle(color: Color(0xFFAAB9DA),),
                 labelStyle: TextStyle(color: Color(0xFFAAB9DA)),
                 border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, style:BorderStyle.solid) ),

               )
           ),),
         Container(margin:  EdgeInsets.symmetric(horizontal: 42),
           child: ElevatedButton(onPressed: (){
             Navigator.pushNamed(context, FBHomeScreen.routeName);
           }, child: Text("LOG IN") ,
               style: ButtonStyle( backgroundColor:MaterialStateProperty.all(Color(
                   0xff4e68a1)))),),
         Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.end,
           children: [
           TextButton(onPressed: (){}, child: Text("Sign Up For Facebook" ,style:  TextStyle(color: Colors.white,fontSize: 16),)),
           TextButton(onPressed: (){}, child: Text("Forget Password?" ,style:  TextStyle(color: Colors.white,fontSize: 16),)),
             SizedBox(height: 26,)
         ],))


       ],
     ));

  }

}
