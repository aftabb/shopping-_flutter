import 'package:flutter/material.dart';
import 'package:my_shopping/Views/ProductDetails.dart';

class WishListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: new Text(
          'Wishlist',
          style: TextStyle(color: Colors.black, fontFamily: 'Montserrat_Bold',fontSize: 16.0),
        ),
        backgroundColor: Colors.white,
      ),
      body: MainBody(),
    );
  }
}

class MainBody extends StatelessWidget {
  var names = [
    'Banarasi saari',
    'Puma Shoes',
    'T-shirt',
    'Belt',
    'Women Beg',
    'Mens Shoes',
  ];
  var paths = [
    'assets/sari.png',
    'assets/pumashoes.png',
    'assets/tshirt.png',
    'assets/belt.png',
    'assets/bag.png',
    'assets/basket.png',
  ];
  String space = "ffbrhbfrh";
  String sub = "ab";

  @override
  Widget build(BuildContext context) {
    space.replaceAll(sub, "");
    // TODO: implement build
    return Container(
      color: Colors.grey,
      child: GridView.count(
        childAspectRatio: 0.70,
        crossAxisCount: 2,
        children: new List<Widget>.generate(names.length, (index) {
          return GestureDetector(
            child: new GridRow(names[index], '', paths[index]),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new ProductDetails()));
            },
          );
        }),
      ),
    );
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
    return Container(
        margin: EdgeInsets.all(0.2),
        decoration: new BoxDecoration(color: Colors.white),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: Stack(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: new Center(
                      child: Image(image: AssetImage(path)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        print('aftab');
                      },
                    ),
                  )
                ],
              ),
              height: 140,
            ),
            new Container(
              margin: EdgeInsets.only(top: 5.0),
              child: new Text(
                name,
                style: TextStyle(fontFamily: 'raleway_bold', fontSize: 16.0),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 5.0),
              child: new Text(
                'ACCESSORIES',
                style:
                    TextStyle(fontFamily: 'raleway_semibold', fontSize: 12.0),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 5.0),
              child: new Text(
                '\$500',
                style: TextStyle(fontFamily: 'raleway_semibold'),
              ),
            ),
            new Container(
                child: RaisedButton(
              onPressed: () {},
              child: new Text(
                'MOVE TO BAG',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontFamily: 'Montserrat'),
              ),
              color: Colors.black87,
            ))
          ],
        ));
  }
}
