import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/Sceond/sceond.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> secondaryText = [
    "This is'nt ab.\" ,"

    "Love you 999" ""
        "ll fight for those who cannot"

    " forever!",
    "Dressed like a bat.I dig it",

    "I'm finally getting my own movie",
  ];
  List<String>text = [
    "Captain Marvel",
    "Iron Man",
    "Wonder Woman",
    "Black Panther",
    "Aquaman",
    "DC vs Marvel",
    "Black Widow",
    "Captain Marvel",
    "Iron Man",
    "Wonder Woman",
    "Black Panther",
    "Aquaman",
    "DC vs Marvel",
    "Black Widow",
  ];
  List<String> images = [
    "images/captain_marvel.jpeg",
    "images/ironman.jpeg",
    "images/wonder_woman.jpeg",
    "images/black_panther.jpeg",
    "images/aquaman.jpeg",
    "images/marvel.jpeg",
    "images/black_widow.jpeg",
    "images/captain_marvel.jpeg",
    "images/ironman.jpeg",
    "images/wonder_woman.jpeg",
    "images/black_panther.jpeg",
    "images/aquaman.jpeg",
    "images/marvel.jpeg",
    "images/black_widow.jpeg",
  ];
  List<String> time = [
    "7.24 PM",
    "6:14 PM",
    "8:00 PM",
    "5:11 PM",
    "6:55 PM",
    "7:16 PM",
    "7:16 PM",
    "7:16 PM",
    "7:16 PM",
    "7:16 PM",
    "Yesterday"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 21,right: 21,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 0,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'italic'
                      ),
                    ),
                    Icon(
                      CupertinoIcons.create_solid,
                      color: Colors.blue,

                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                //Chats
                "Chats",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 29,
                    fontWeight: FontWeight.bold,

                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.grey.shade600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(8),
                  fillColor: Colors.grey.shade800,
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Broadcast Lists",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text(
                    "New Groups",
                    style: TextStyle(
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Divider(
              color: Colors.grey.shade600,
              height: 1,
            ),
            SizedBox(height: 12),
            ListView.builder(
              itemCount: text.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 16,right: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUserPage(
                  text: text[index],
                  secondaryText: secondaryText[index],
                  image: images[index],
                  time: time[index],
                  isMessageSent: (index == 2 || index == 5)?true:false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}