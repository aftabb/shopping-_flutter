import 'package:flutter/material.dart';
import 'package:my_shopping/CustomComponent/Carosal.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ProductHome();
  }
}

class ProductHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: new Text(
              'Product Details',
              style: TextStyle(color: Colors.black),
            ),
            iconTheme: IconThemeData(color: Colors.black)),
        body: ProductBody());
  }
}

class ProductBody extends StatelessWidget {
  var themeDetailsText =
      TextStyle(fontFamily: 'RalewaySemiBold', fontSize: 14.0);
  var cMargin = EdgeInsets.all(5);
  var themeButton = TextStyle(
      color: Colors.white, fontFamily: 'raleway_bold', fontSize: 14.0);
  var circleTextStyle =
      TextStyle(fontSize: 14.0, fontFamily: 'raleway_semibold');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        new SizedBox(
          height: 300.0,
          child: Carousel(
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage('assets/footo.png'),
                  fit: BoxFit.cover,
                ),
                padding: EdgeInsets.all(40.0),
              ),
              new Container(
                child: Image(image: AssetImage('assets/footf.png')),
                padding: EdgeInsets.all(40.0),
              ),
              new Container(
                child: Image(image: AssetImage('assets/foott.png')),
                padding: EdgeInsets.all(40.0),
              )
            ],
          ),
        ),
//        new Container(
//          margin: EdgeInsets.all(10.0),
//          child: ListView(
//            scrollDirection: Axis.horizontal,
//            children: <Widget>[
//              new Container(
//                child: Image(image: AssetImage('assets/tshirt.png')),
//              ),
//              Image(image: AssetImage('assets/tshirt.png')),
//              Image(image: AssetImage('assets/tshirt.png')),
//              Image(image: AssetImage('assets/tshirt.png')),
//              Image(image: AssetImage('assets/tshirt.png')),
//            ],
//          ),
//          height: 500.0,
//        ),
        new Container(
          margin: EdgeInsets.all(10.0),
          child: new Text(
            'Navy Bomber Jacket',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'raleway_bold', fontSize: 16.0),
          ),
        ),
        new Container(
          margin: EdgeInsets.only(top: 5),
          child: new Text(
            '\$450',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'RalewaySemiBold',fontSize: 16.0),
          ),
        ),
        new Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(
              color: Colors.black26,
            )),
        new Container(
          margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 10),
            child: Text(
          'India is home to a plethora of handlooms, weaves and '
              'handicrafts. It’s a different feeling of owning a '
              'material that has been carefully put together and woven,'
              ' and these ethnic weaves, produced indigenously, '
              'are each a unique specimen handed down as family heirlooms generation after generation.',
          style: themeDetailsText,
          textAlign: TextAlign.center,
        )),
        new Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new InkWell(
                child: new Container(
                  margin: cMargin,
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
              ),
              new InkWell(
                child: new Container(
                  margin: cMargin,
                  height: 40.0,
                  width: 40.0,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
                ),
              ),
              new InkWell(
                child: new Container(
                  margin: cMargin,
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurpleAccent),
                ),
              )
            ],
          ),
        ),
        new Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: cMargin,
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.circle,
                  ),
                  child: new Center(
                    child: Text(
                      'S',
                      style: circleTextStyle,
                    ),
                  )),
              Container(
                  margin: cMargin,
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.circle,
                  ),
                  child: new Center(
                    child: Text(
                      'M',
                      style: circleTextStyle,
                    ),
                  )),
              Container(
                  margin: cMargin,
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.circle,
                  ),
                  child: new Center(
                    child: Text(
                      'L',
                      style: circleTextStyle,
                    ),
                  )),
              Container(
                  margin: cMargin,
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.circle,
                  ),
                  child: new Center(
                    child: Text(
                      'XL',
                      style: circleTextStyle,
                    ),
                  )),
            ],
          ),
        ),
        new Container(
          height: 50,
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          child: new Center(
            child: Text(
              'ADD TO CART',
              style: themeButton,
            ),
          ),
        ),

        new Container(
          margin: EdgeInsets.all(20.0),
          height: 50.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            border: Border.all(color: Colors.black,width: 2.0),
          ),
          child: new Center(
            child: new Text(
              'ADD TO WISHLIST',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'raleway_bold',
                  fontSize: 14.0),
            ),
          ),
        )
      ],
    );
  }
}
