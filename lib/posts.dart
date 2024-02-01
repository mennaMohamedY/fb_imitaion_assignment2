

import 'package:flutter/material.dart';

class Posts extends StatelessWidget{
  String name;
  String postContent;
  String postedFromXHrs;
  String numOfLikes;
  String numOfComments;
  String accImgPath;
  Posts({required this.name,required this.postContent, required this.accImgPath,required this.numOfComments, required this.numOfLikes, required this.postedFromXHrs});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(children: [
        Container( width: 56,height: 56,decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill,
                image: AssetImage(accImgPath),), borderRadius: BorderRadius.circular(55)),
          margin: EdgeInsets.only(top: 12,right: 6,left: 6),
        ),
        Column(
          crossAxisAlignment:CrossAxisAlignment.start,children: [
          Container(margin: EdgeInsets.only(top: 12,left: 6),child: Text(name,style:  TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),),
          Row(children: [
            Container(margin: EdgeInsets.only(left: 6,right: 2),child: Text("${postedFromXHrs} hrs",style:  TextStyle(fontSize: 16)),),
            Icon(Icons.public,)


          ],)



        ],)
        
      ],),
        Container(margin: EdgeInsets.symmetric(vertical: 21, horizontal: 12),child: Text(postContent,style:
        TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),),
        Row(children: [
          Container(margin: EdgeInsets.all(12),child:Text(numOfLikes,style: TextStyle(fontSize: 16),)
            ,),
          Image.asset("assets/images/like.jpg",width: 50,height: 50,),
    SizedBox(width: 182,),
    Row(crossAxisAlignment: CrossAxisAlignment.end,children: [Text("${numOfComments} comments",style: TextStyle(fontSize: 16),)],)
    ],),
        Container(width: double.infinity,height: 1,color: Colors.grey,),
        SizedBox(height: 12,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          Row(children: [Image.asset("assets/images/singleLike.jpg",height: 25,width: 20,),SizedBox(width: 6,),Text("like",style: TextStyle(fontSize: 19),)],),
          Row(children: [Image.asset("assets/images/comment.jpg",height: 25,width: 25,),SizedBox(width: 6,),Text("comment",style: TextStyle(fontSize: 19))]),
          Row(children: [Image.asset("assets/images/share.png",height: 25,width: 25,),SizedBox(width: 6,),Text("share",style: TextStyle(fontSize: 19))])
        ],),
        SizedBox(height: 12,),
        Container(width: double.infinity,height: 1,color: Colors.grey,),


      ],);
  }
  
}