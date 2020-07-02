import 'package:flutter/material.dart';
import 'package:flutterapp/uidata.dart';
import 'package:flutterapp/widgets/button.dart';

class ImageCard extends StatelessWidget {
  final String cardImage;

  const ImageCard({Key key, this.cardImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
              image: AssetImage(cardImage),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Look awesome \n & save Some",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
          SizedBox(height: 15),
          MyButton(
            btnText: "View",
            onpressed: () {},
          )
          // MyButton2(btnText: "GET UPTO 50% OFF", onpressed: () {})
        ],
      ),
    );
  }
}
