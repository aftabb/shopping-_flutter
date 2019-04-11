import 'package:flutter/material.dart';
import 'package:my_shopping/Views/HomeScreen.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ButtonTheme(
      height: 55.0,
      minWidth: double.infinity,
      child: new RaisedButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0)),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen())
          );
        },
        child: new Text("SIGN IN"),
        color: Colors.black,
        textColor: Colors.white,
      ),
    );
  }
}
