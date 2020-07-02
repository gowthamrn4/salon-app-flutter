import 'package:flutter/material.dart';
import 'package:flutterapp/uidata.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;

  const MyButton({Key key, this.btnText, this.onpressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: 40,
      child: FlatButton(
        color: UiData.mainColor,
        child: Text(btnText,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.5,
                fontWeight: FontWeight.w400)),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        onPressed: onpressed,
      ),
    );
  }
}
