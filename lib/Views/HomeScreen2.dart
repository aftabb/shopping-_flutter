import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_shopping/CustomComponent/Carosal.dart';
import 'package:my_shopping/Views/ProductDetails.dart';

class HomeScreen2 extends StatelessWidget {
  var names = [
    'Lether Jacket',
    'Belt',
    'Women Beg',
    'Mens Shoes',
    'Lether Jacket',
    'Belt',
    'Women Beg',
    'Mens Shoes'
  ];
  var paths = [
    'assets/cap.png',
    'assets/belt.png',
    'assets/bag.png',
    'assets/basket.png',
    'assets/tshirt.png',
    'assets/belt.png',
    'assets/bag.png',
    'assets/basket.png'
  ];

  //variable for gadgets section
  var gadgets_images = [
    'assets/gadgets.png',
    'assets/jbl.jpg',
    'assets/watch.jpg',
    'assets/headphonet.png'
  ];
  var gadgets_name = ['boAt', 'JBL', 'Blink', 'Bluedio'];
  var gadgets_details = [''];

  //variable for women section

  var womens_images = [
    'assets/sari.png',
    'assets/hills.png',
    'assets/kurta.png',
    'assets/pumashoes.png'
  ];
  var womens_name = ['Banarasi saree', 'Women Heels', 'Women kurta','Puma Shoes'];

  //variable for mens commections.

  var mens_images = ['assets/mensl.png'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
//        new Container(
//          padding: new EdgeInsets.all(0.0),
//          height: 200.0,
//          child: Image(
//              width: double.infinity,
//              fit: BoxFit.fill,
//              image: new AssetImage('assets/first.png')),
//        ),
//        new CarouselSlider(
//            items: [1,2,3,4,5].map((i) {
//              return new Builder(
//                builder: (BuildContext context) {
//                  return new Container(
//                      width: MediaQuery.of(context).size.width,
//                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
//                      decoration: new BoxDecoration(
//                          color: Colors.amber
//                      ),
//                      child: new Text('text $i', style: new TextStyle(fontSize: 16.0),)
//                  );
//                },
//              );
//            }).toList(),
//            height: 240.0,
//        ),
        new SizedBox(
          height: 240.0,
          child: new Carousel(children: [
            new Image(image: AssetImage('assets/full.jpg')),
            new Image(image: AssetImage('assets/fullll.jpg')),
//            new Stack(
//              children: <Widget>[
//                new Image(image: AssetImage('assets/full.jpg')),
//                new Center(
//                    child: new RaisedButton(
//                  onPressed: () {},
//                  color: Colors.deepOrange,
//                  child: new Text('Shop'),
//                ))
//              ],
//            )
          ]),
        ),
        new Container(
          child: new Row(
            children: <Widget>[
              new Expanded(
                flex: 3,
                child: new Text(
                  'New Arrivals',
                  style: new TextStyle(
                      fontSize: 16.0, fontFamily: 'Montserrat_Bold'),
                ),
              ),
              new Expanded(
                flex: 1,
                child: HomeButton('VIEW ALL'),
              )
            ],
          ),
          margin: EdgeInsets.all(20.0),
        ),
        new Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new GridRow(gadgets_name[0], '', gadgets_images[0]),
              new GridRow(gadgets_name[1], '', gadgets_images[1]),
              new GridRow(gadgets_name[2], '', gadgets_images[2]),
              new GridRow(gadgets_name[3], '', gadgets_images[3]),
            ],
          ),
          height: 270.0,
        ),
        new Container(
          child: new Row(
            children: <Widget>[
              new Expanded(
                  flex: 3,
                  child: new Text(
                    'Womens',
                    style: new TextStyle(
                        fontSize: 16.0, fontFamily: 'Montserrat_Bold'),
                  )),
              new Expanded(
                flex: 1,
                child: HomeButton('VIEW ALL'),
              )
            ],
          ),
          margin: EdgeInsets.all(20.0),
        ),
        new Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new GridRow(womens_name[0], '', womens_images[0]),
              new GridRow(womens_name[1], '', womens_images[1]),
              new GridRow(names[2], '', paths[2]),
              new GridRow(womens_name[2], '', womens_images[2]),
            ],
          ),
          height: 270.0,
        ),
        new Container(
          child: new Row(
            children: <Widget>[
              new Expanded(
                  flex: 3,
                  child: new Text(
                    'Kids',
                    style: new TextStyle(
                        fontSize: 16.0, fontFamily: 'Montserrat_Bold'),
                  )),
              new Expanded(flex: 1, child: HomeButton('VIEW ALL'))
            ],
          ),
          margin: EdgeInsets.all(20.0),
        ),
        new Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new GridRow(names[0], '', mens_images[0]),
              new GridRow(names[1], '', paths[1]),
              new GridRow(names[2], '', paths[2]),
              new GridRow(names[3], '', paths[3]),
            ],
          ),
          height: 270.0,
        )
      ],
    ));
  }
}

class GridRow extends StatelessWidget {
  var name;
  var category;
  var path;

  GridRow(String name, String category, String path) {
    this.name = name;
    this.category = category;
    this.path = path;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => new ProductDetails()));
      },
      child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                new BoxShadow(
                    offset: new Offset(0.0, 2.0),
                    blurRadius: 2.0,
                    color: Colors.grey),
              ],
              color: Colors.white,
              border: Border(
                  left: BorderSide(color: Colors.black26, width: 0.5),
                  top: BorderSide(color: Colors.black26, width: 0.5),
                  right: BorderSide(color: Colors.black26, width: 0.5),
                  bottom: BorderSide(color: Colors.black26, width: 0.5))),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10.0),
                child: new Center(
                  child: Image(image: AssetImage(path)),
                ),
                height: 140.0,
                width: 140.0,
              ),
//            new Container(
//              margin: EdgeInsets.only(left: 10.0,right: 10.0),
//              child: Divider(
//                color: Colors.black26,
//              ),
//            )

              new Container(
                margin: EdgeInsets.only(top: 5.0, left: 10.0),
                child: new Text(
                  name,
                  style: TextStyle(fontFamily: 'raleway_bold', fontSize: 16.0),
                  textAlign: TextAlign.left,
                ),
              ),
              new Container(
                margin: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
                child: new Text(
                  'boAT Headphones',
                  maxLines: 1,
                  style:
                      TextStyle(fontFamily: 'raleway_semibold', fontSize: 12.0),
                  textAlign: TextAlign.left,
                ),
              ),
              new Container(
                  margin: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
                  child: new Row(
                    children: <Widget>[
                      new Text(
                        '\$500',
                        style: TextStyle(fontFamily: 'raleway_semibold'),
                      ),
                      new Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: new Text('\$1000',
                            style: new TextStyle(
                                fontFamily: 'raleway_semibold',
                                decoration: TextDecoration.lineThrough,
                                color: Colors.red)),
                      ),
                      new Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: new Text('50% OFF',
                            style: new TextStyle(
                                fontFamily: 'raleway_semibold',
                                color: Colors.black)),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}

class HomeButton extends StatelessWidget {
  String text;

  HomeButton(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
        onPressed: () {},
        child: new Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
              fontFamily: 'Montserrat_Bold'),
        ),
        color: Colors.black,
      ),
    );
  }
}
