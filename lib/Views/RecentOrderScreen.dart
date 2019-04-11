import 'package:flutter/material.dart';

class RecentOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: CustomRow('assets/petite.jpg'),
            ),
            new Container(
              child: CustomRow('assets/fulljacket.jpg'),
            ),
            new Container(
              child: CustomRow('assets/fulljacket.jpg'),
            ),

          ],
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  var defaultMargin = EdgeInsets.only(top: 5);

  String path;

  CustomRow(String path) {
    this.path = path;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.all(5.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          new BoxShadow(
              offset: new Offset(0.0, 1.0),
              blurRadius: 2.0,
              color: Colors.black26),
        ],
//          border: Border(
//              left: BorderSide(color: Colors.black26, width: 0.5),
//              top: BorderSide(color: Colors.black26, width: 0.5),
//              right: BorderSide(color: Colors.black26, width: 0.5),
//              bottom: BorderSide(color: Colors.black26, width: 0.5))
      ),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                color: Colors.grey,
                child: new Image(
                  image: AssetImage(path),
                  fit: BoxFit.fitWidth,
                ),
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.all(20.0),
              ),
              new Expanded(
                flex: 3,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                        margin: defaultMargin,
                        child: new Text(
                          'Roadster',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'raleway_bold',
                              fontSize: 16.0),
                        )),
                    new Container(
                      margin: defaultMargin,
                      child: new Text(
                        'Men Olive Green jacket',
                        style: TextStyle(
                            fontFamily: 'RalewaySemiBold', fontSize: 14.0),
                      ),
                    ),
                    new Container(
                        margin: defaultMargin,
                        child: new Text(
                      'SIZE:M | Qty 1',
                      style: TextStyle(fontFamily: 'Montserrat',fontSize: 12.0),
                    )),
                    new Container(
                      margin: defaultMargin,
                      child: new Text(
                        '\$500',
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'RalewaySemiBold'),
                      ),
                    ),
                    new Container(
                      margin: defaultMargin,
                      child: new Text(
                        'Cancelled(26 Dec)',
                        style: TextStyle(color: Colors.red,fontFamily: 'RalewaySemiBold',fontSize: 14.0),
                      ),
                    )
                  ],
                ),
              ),
              new Expanded(
                flex: 1,
                child: IconButton(
                  icon: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                  onPressed: null,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends Container {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.only(top: 10),
    );
  }
}
