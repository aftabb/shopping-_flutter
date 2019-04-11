import 'package:flutter/material.dart';

class HomeListRow extends StatelessWidget {
  var name;
  var imagepath;

  HomeListRow(String name,String path) {
    this.name = name;
    this.imagepath = path;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
      child: new Column(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(color: Colors.black12),
            height: 140.0,
            width: double.infinity,
            child: Image(
                height: 50.0,
                width: 50.0,
                image: AssetImage(imagepath)),
          ),
          new Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text(
                    name,
                    style: new TextStyle(
                        fontSize: 16.0, fontFamily: 'raleway_bold'),
                  )),
                  new Expanded(
                      child: new Text(
                    "400 Rs",
                    style: new TextStyle(fontFamily: 'raleway_semibold'),
                  ))
                ],
              )),
          new Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new Text(
                  "MENS SHOES",
                  style: new TextStyle(
                      fontSize: 12.0, fontFamily: 'raleway_semibold'),
                )),
                new Expanded(
                    child: new Text(
                  "500 Rs",
                  style: new TextStyle(
                      fontFamily: 'raleway_semibold',
                      decoration: TextDecoration.lineThrough,
                      color: Colors.red),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
