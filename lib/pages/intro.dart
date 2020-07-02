import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/button.dart';
import 'package:flutterapp/uidata.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/main.png",
                      ),
                      fit: BoxFit.contain)),
            ),
            Text(
              "Book your \nFavourite Stylist",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 1.4,
              ),
            ),
            Text(
              "Lorem Ipsum is simply a dummy text of the printing and typesetting industry",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.8,
                letterSpacing: 1.2,
              ),
            ),
            MyButton(
              btnText: "Get Started",
              onpressed: () =>
                  Navigator.pushNamed(context, UiData.homePageRoute),
            )
          ],
        ),
      ),
    );
  }
}
