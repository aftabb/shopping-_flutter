import 'package:flutter/material.dart';
import 'package:my_shopping/CustomComponent/LoginButton.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: new Text(
          'SighUp',
          style: new TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: new Container(
        margin: EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              height: 50.0,
              margin: EdgeInsets.only(top: 10.0),
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
              margin: EdgeInsets.only(top: 10.0),
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
              height: 50.0,
              margin: EdgeInsets.only(top: 10.0),
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
                        hintText: 'Confirm Password',
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
              margin: EdgeInsets.only(top: 10.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new Image(
                        width: 24.0,
                        height: 24.0,
                        color: Colors.black,
                        image: new AssetImage('assets/user.png'),
                      )),
                  new Flexible(
                    child: new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
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
              margin: EdgeInsets.only(top: 10.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new Image(
                        width: 24.0,
                        height: 24.0,
                        color: Colors.black,
                        image: new AssetImage('assets/telephone.png'),
                      )),
                  new Flexible(
                    child: new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mobile Number',
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
              margin: EdgeInsets.only(top: 30.0),
              child: new LoginButton(),
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0),
              child: new Text('Already have an Account? Login',style: TextStyle(fontFamily: 'raleway_bold'),),
            )
          ],
        ),
      ),
    );
  }
}
