import 'package:flutter/material.dart';
import 'package:my_shopping/CustomComponent/HomeListRow.dart';
import 'package:my_shopping/CustomComponent/NavigationDrawer.dart';
import 'package:my_shopping/Views/CartScreen.dart';
import 'package:my_shopping/Views/HomeScreen2.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: NavigationDrawer(),
        appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            new Container(
              child: new Stack(
                children: <Widget>[

                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartScreen()));
                    },
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: new Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.circle
                      ),
                      child: Text('2',style: TextStyle(color: Colors.white),),
                    )
                    ,
                  ),
                ],
              ),
            )
          ],
          title: new Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: HomeScreen2());
  }
}

class MainBody extends StatelessWidget {
  List<String> litems = ['Item 1', 'Item 10', 'Item 3', 'Item 4', 'Item 5'];
  List<String> litemsPath = [
    'assets/basket.png',
    'assets/basket.png',
    'assets/bag.png',
    'assets/cap.png',
    'assets/belt.png'
  ];

  Widget getRow(BuildContext context, int position) {
    if (position == 0) {
      return new Container(
        padding: new EdgeInsets.all(0.0),
        height: 200.0,
        child: Image(
            width: double.infinity,
            fit: BoxFit.fill,
            image: new AssetImage('assets/first.png')),
      );
    } else {
      return new HomeListRow(litems[position], litemsPath[position]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: litems.length,
        itemBuilder: (BuildContext context, int i) {
          return getRow(context, i);
        });
  }
}

class HomeListRow1 extends StatelessWidget {
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
                height: 100.0,
                width: 100.0,
                image: AssetImage('assets/cap.png')),
          )
        ],
      ),
    );
  }
}
