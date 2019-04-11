import 'package:flutter/material.dart';
import 'package:my_shopping/CustomComponent/LoginButton.dart';
import 'package:my_shopping/Views/SignUpScreen.dart';
import 'package:my_shopping/Views/ExperimentClass.dart';
///////experiment class////


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white
        ),
        home: new MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(title: new Text("My Style")),
      body: new Container(
        margin: EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "My Style",
              style: new TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                  fontFamily: 'raleway_bold'),
            ),
            new Container(
              margin: EdgeInsets.only(top: 30.0),
              child: new Text(
                "More Than 1000+ exclusive brands all in \n one place",
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontFamily: 'raleway_bold', color: Colors.grey),
              ),
            ),
            new Container(
              height: 50.0,
              margin: EdgeInsets.only(top: 20.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new Image(
                        width: 24.0,
                        height: 24.0,
                        color: Colors.black,
                        image: new AssetImage('assets/email.png'),
                      )),
                  new Flexible(
                    child: new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  )
                ],
              ),
              decoration: new BoxDecoration(
                  border: new Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: new BorderRadius.circular(1.0)),
            ),
            new Container(
              height: 50.0,
              margin: EdgeInsets.only(top: 20.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new Image(
                        width: 24.0,
                        height: 24.0,
                        color: Colors.black,
                        image: new AssetImage('assets/lock.png'),
                      )),
                  new Flexible(
                    child: new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  )
                ],
              ),
              decoration: new BoxDecoration(
                  border: new Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: new BorderRadius.circular(1.0)),
            ),
            new Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0),
              child: new Text(
                "Forgot Password?",
                textAlign: TextAlign.right,
                style: new TextStyle(
                    color: Colors.black, fontFamily: 'raleway_bold'),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0),
              child: new LoginButton(),
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0),
              child: new GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new SignUpScreen()));
                },
                child: new Text(
                  "Dont have Account? Sign Up",
                  style: new TextStyle(
                      color: Colors.black, fontFamily: 'raleway_bold'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
