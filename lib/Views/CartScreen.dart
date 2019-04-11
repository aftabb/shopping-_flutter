import 'package:flutter/material.dart';
import 'package:my_shopping/CustomComponent/CustomDivider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Cart'),
      ),
      body: CartBody(),
    );
  }
}

class CartBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemBuilder: (BuildContext context, int i) {
        return getRow(context, i);
      },
      itemCount: 3,
    );
  }

  Widget getRow(BuildContext context, int position) {
    if (position != 2)
      return TopViewRow();
    else {
      return BottomView();
    }
  }
}

class TopViewRow extends StatelessWidget {
  var textStyle = TextStyle(fontFamily: 'RalewaySemiBold',fontSize: 14.0,color: Colors.red);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.only(top: 10.0),

      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                child: new Image(image: AssetImage('assets/blazzer.png')),
                height: 80.0,
                width: 80.0,
                margin: EdgeInsets.all(30.0),
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new CustomContainer('Solid Single Men\'s Blazer', 'raleway_bold'),
                  new CustomContainer('Accessories', 'Montserrat'),
                  new CustomContainer('SIME:M', 'Montserrat'),
                  new CustomContainer('Est Time 3 to 4 day', 'Montserrat'),
                  new CustomContainer('\$700', "raleway_bold"),
                ],
              )
            ],
          ),
          new Container(
            alignment: FractionalOffset.center,
            child: new Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(width: 1.0, color: Colors.black))),
                    child: Text(
                      'REMOVE',
                      textAlign: TextAlign.center,
                      style: textStyle,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'MOVE TO WISHLIST',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14.0,fontFamily: 'RalewaySemiBold',color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            height: 30.0,
          ),
          new CustomDivider(),

        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  String name, font;

  CustomContainer(this.name, this.font);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      width: 200.0,
      margin: EdgeInsets.only(top: 2.0),
      child: Text(
        name,
        style: TextStyle(fontFamily: font,)
        ,
        maxLines: 1,
        softWrap: true,
      ),
    );
  }
}

class BottomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: new Column(
        children: <Widget>[
          new Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text(
                    'Shipping',
                    style: new TextStyle(
                        fontSize: 16.0, fontFamily: 'RalewaySemiBold'),
                  )),
                  new Expanded(
                      child: new Text(
                    "FREE",
                    style: new TextStyle(fontFamily: 'Montserrat'),
                    textAlign: TextAlign.right,
                  ))
                ],
              )),
          new Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text(
                    'Subtotal',
                    style: new TextStyle(
                        fontSize: 16.0, fontFamily: 'RalewaySemiBold'),
                  )),
                  new Expanded(
                      child: new Text(
                    "1400 Rs",
                    style: new TextStyle(fontFamily: 'Montserrat'),
                    textAlign: TextAlign.right,
                  ))
                ],
              )),
          new Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text(
                    'Discount',
                    style: new TextStyle(
                        fontSize: 16.0, fontFamily: 'RalewaySemiBold'),
                  )),
                  new Expanded(
                      child: new Text(
                    "400 Rs",
                    textAlign: TextAlign.right,
                    style: new TextStyle(fontFamily: 'Montserrat'),
                  ))
                ],
              )),
          new CustomDivider(),
          new Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text(
                    'Total',
                    style: new TextStyle(
                        fontSize: 16.0, fontFamily: 'RalewaySemiBold'),
                  )),
                  new Expanded(
                      child: new Text(
                    "1000 Rs",
                    textAlign: TextAlign.right,
                    style: new TextStyle(fontFamily: 'raleway_bold'),
                  ))
                ],
              )),
          new Container(
            height: 50.0,
            margin: EdgeInsets.all(30.0),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              border: Border.all(color: Colors.black,width: 2.0),
            ),
            child: new Center(
              child: new Text(
                'PLACE ORDER',
                style: TextStyle(fontFamily: 'RalewaySemiBold'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
