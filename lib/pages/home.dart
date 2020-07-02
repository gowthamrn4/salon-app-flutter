import 'package:flutter/material.dart';
import 'package:flutterapp/uidata.dart';
import 'package:flutterapp/widgets/image_card.dart';
import 'package:flutterapp/widgets/my_column.dart';
import 'package:flutterapp/widgets/column_01.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.short_text,
            color: Colors.black87,
          ),
          iconSize: 40,
          onPressed: () {},
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(right: 15, top: 15),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
          )
        ],
      ),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: screen_size_height * .2,
                width: screen_size_width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ImageCard(cardImage: "images/braid4.jpg"),
                    SizedBox(width: 10),
                    ImageCard(cardImage: "images/braid3.jpg"),
                    SizedBox(width: 10),
                    ImageCard(cardImage: "images/braid2.jpg"),
                    SizedBox(width: 10),
                    ImageCard(cardImage: "images/braid3.jpg"),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  imageExpanded("images/braid.png", 'Braid', context),
                  imageExpanded("images/abuja.png", 'Abuja', context),
                  imageExpanded("images/blow.png", 'Blow', context),
                  imageExpanded("images/haircut.png", 'Hair Cut', context),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  imageExpanded("images/braid.png", 'Braid', context),
                  imageExpanded("images/abuja.png", 'Abuja', context),
                  imageExpanded("images/blow.png", 'Blow', context),
                  imageExpanded("images/haircut.png", 'Hair Cut', context),
                ],
              ),
              SizedBox(height: 6),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Hair Specialists",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    FlatButton(
                        onPressed: () {},
                        child: Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),
              SizedBox(height: 6),
              Container(
                  height: 230,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SpecialistColumn(
                          specImg: "images/braid2.jpg", specName: "Ajith"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid4.jpg", specName: "Rahul"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid3.jpg", specName: "Karthi"),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Expanded imageExpanded(String imageUrl, String name, context) {
  return (Expanded(
    child: InkWell(
      onTap: () => Navigator.pushNamed(context, UiData.bookPageRoute),
      child: MyColumn(
        columnImg: imageUrl,
        columnTxt: name,
        columnBg: UiData.lightColor,
      ),
    ),
  ));
}
