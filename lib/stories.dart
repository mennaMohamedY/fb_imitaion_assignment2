


import 'package:assignment2_part1/story_dataclass.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget{
  static const String routeName="Stories";
  String imgPath;
  String accountName;
  String storyImgPath;
  Stories({required this.imgPath,required this.accountName, required this.storyImgPath});



  @override
  Widget build(BuildContext context) {

    return Stack(children: [
      Container(margin: EdgeInsets.all(9), width :150,height: 200,
          decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),image: DecorationImage(fit: BoxFit.fill,
              image: AssetImage(storyImgPath)
          ))
      ),
      Container( margin:EdgeInsets.all(9),width :150,height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(22)),
          color: Color(0xA92D2C2C),
        ),
      ),
      Container(margin: EdgeInsets.all(22),width: 50,height: 50,
        decoration: BoxDecoration(border: Border.all(color: Colors.blue,width: 2),borderRadius:
        BorderRadius.all(Radius.circular(55),),
          image: DecorationImage(image: AssetImage(imgPath),
              fit:BoxFit.fill ),
        ),
      ),
      Container(
          margin:EdgeInsets.only(top: 160,left: 50),
          child:Text(accountName,
            style:TextStyle(color: Colors.white,
                fontSize: 22,fontWeight: FontWeight.bold),)
      )


    ],);
  }

}