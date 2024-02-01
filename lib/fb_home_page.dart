

import 'package:assignment2_part1/post_dataclass.dart';
import 'package:assignment2_part1/posts.dart';
import 'package:assignment2_part1/stories.dart';
import 'package:assignment2_part1/story_dataclass.dart';
import 'package:flutter/material.dart';

class FBHomeScreen extends StatelessWidget{
  static const String routeName="FBHomeScreen";
  List<StoryDataClass> StoriesList=[];
  List<Post> PostsList=[];

  void initStoriesList(){
    for (int i=0; i<1000; i++){
      StoriesList.add(StoryDataClass(imgPath: "assets/images/p1.jpg", accountName:"Owner", storyImgPath: "assets/images/facebookStory.jpg"));
    }
  }
  void initPostsList(){
    for(int i=0; i<1000; i++){
      PostsList.add(
        Post(name: "Owner", accImgPath: "assets/images/p1.jpg", postContent: "Free Palestine", numOfComments: "100", numOfLikes: "100", postedFromXHrs: "3")
      );
    }
  }
  FBHomeScreen(){
    initStoriesList();
    initPostsList();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("Assignment #2"),
            backgroundColor: Color(0xFF3B5999)),
        body: Column(children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: itembuilder,
              itemCount:StoriesList.length ,
            ),
          ),
          SizedBox(width: 480,
          height: 480,
          child: ListView.builder(
              itemBuilder:postsItemBuilder,itemCount: PostsList.length, ),)
        ],)
    );
  }

  Stories itembuilder(BuildContext context,int position){
    return Stories(imgPath: StoriesList[position].imgPath, accountName: StoriesList[position].accountName, storyImgPath: StoriesList[position].storyImgPath);
  }

  Stories ConvertList(StoryDataClass storyDataClass){
    return Stories(imgPath: storyDataClass.imgPath, accountName: storyDataClass.accountName, storyImgPath: storyDataClass.storyImgPath);
  }

  Posts ConvertPostsList(Post postDataClass){
    return Posts(name:  "Owner", postContent: "Free Palestine", accImgPath: "assets/images/p1.jpg", numOfComments: "100", numOfLikes: "100", postedFromXHrs: "3");
  }

  Posts postsItemBuilder(BuildContext context, int position){
    return
      Posts(name:  PostsList[position].name, postContent: PostsList[position].postContent, accImgPath: PostsList[position].accImgPath, numOfComments: PostsList[position].numOfComments, numOfLikes: PostsList[position].numOfLikes, postedFromXHrs: PostsList[position].postedFromXHrs);
  }

  }
/*
SingleChildScrollView(
          scrollDirection: Axis.horizontal ,
          child: Row(children: StoriesList.map(ConvertList).toList()
          ),)
 */

