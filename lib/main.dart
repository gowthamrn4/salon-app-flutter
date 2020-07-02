import 'package:flutter/material.dart';
import 'package:flutterapp/pages/book.dart';
import 'package:flutterapp/pages/home.dart';
import 'package:flutterapp/pages/intro.dart';
import 'package:flutterapp/uidata.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(
        primaryColor: const Color(0xffB23121),
        accentColor: const Color(0xffD44638)),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        routes: <String, WidgetBuilder>{
          UiData.homePageRoute: (BuildContext context) => HomePage(),
          UiData.introPageRoute: (BuildContext context) => IntroPage(),
          UiData.bookPageRoute: (BuildContext context) => BookPage()
        });
  }
}
