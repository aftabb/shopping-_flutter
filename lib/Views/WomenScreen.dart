import 'package:flutter/material.dart';

class WomenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Women'),
        ),
        body: new Container(
          decoration: BoxDecoration(color: Colors.black26),
          child: MainBody(),
        ));
  }
}

class MainBody extends StatelessWidget {
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
  var womens_images = [
    'assets/sari.png',
    'assets/hills.png',
    'assets/kurta.png',
    'assets/pumashoes.png',
    'assets/sari.png',
    'assets/hills.png',
    'assets/kurta.png',
    'assets/pumashoes.png'
  ];
  var womens_name = ['Banarasi saree', 'Women Heels', 'Women kurta','Puma Shoes','Banarasi saree', 'Women Heels', 'Women kurta','Puma Shoes'];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Flexible(
          child: GridView.count(
            childAspectRatio: 0.70,
            crossAxisCount: 2,
            children: new List<Widget>.generate(womens_name.length, (index) {
              return GestureDetector(
                child: new GridRow(womens_name[index], '', womens_images[index]),
              );
            }),
          ),
        ),
        new Container(
          alignment: FractionalOffset.center,
          decoration: BoxDecoration(color: Colors.white),
          child: new Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 1.0, color: Colors.black))),
                  child: Text(
                    'FILTER',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    'SORT',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          height: 56.0,
        )
      ],
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
        decoration: BoxDecoration(color: Colors.white),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(

              child: new Stack(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:20.0,left: 10.0,right: 10.0),
                    child: new Center(
                      child: Image(image: AssetImage(path)),
                    ),
                  )
                  ,
                  new Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      ),
                      onPressed: null,
                    ),
                  )
                ],
              ),

              height: 140.0,
            ),
//            new Container(
//              margin: EdgeInsets.only(left: 10.0,right: 10.0),
//              child: Divider(
//                color: Colors.black26,
//              ),
//            )

            new Container(
                margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: new Row(children: <Widget>[
                  new Expanded(
                      flex: 3,
                      child: new Text(
                        name,
                        style: TextStyle(
                            fontFamily: 'raleway_bold', fontSize: 16.0),
                        textAlign: TextAlign.left,
                      )),
                ])),
            new Container(
              margin: EdgeInsets.only(top: 5.0, left: 10.0),
              child: new Text(
                'WOMEN MAXI DRESS ',
                maxLines: 1,
                style:
                    TextStyle(fontFamily: 'raleway_semibold', fontSize: 12.0),
                textAlign: TextAlign.left,
              ),
            ),
            new Container(
                margin: EdgeInsets.only(top: 5.0, left: 10.0),
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
        ));
  }
}
