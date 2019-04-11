import 'package:flutter/material.dart';
import 'package:my_shopping/Views/WishListScreen.dart';
import 'package:my_shopping/Views/WomenScreen.dart';
import 'package:my_shopping/Views/RecentOrderScreen.dart';

class NavigationDrawer extends StatelessWidget {
  var drawerText = new TextStyle(fontSize: 16.0, fontFamily: 'raleway_bold');
  var drawerSubtext =
      new TextStyle(fontSize: 16.0, fontFamily: 'RalewaySemiBold');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'My Style',
              style: TextStyle(fontSize: 24.0, fontFamily: 'raleway_bold'),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              'Women',
              style: drawerText,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new WomenScreen()));
            },
          ),
          ListTile(
            title: Text(
              'Men',
              style: drawerText,
            ),
            onTap: () {
              // Update the state of the app
              // ...
            },
          ),
          ListTile(
            title: Text(
              'Kids',
              style: drawerText,
            ),
          ),
          ListTile(
            title: Text(
              'Home & Living',
              style: drawerText,
            ),
          ),
          ListTile(
              title: Text(
            'Gadgets',
            style: drawerText,
          )),
          new Divider(
            color: Colors.black12,
          ),
          new Container(
              margin: new EdgeInsets.only(left: 10.0),
              child: ListTile(
                title: Text(
                  'Wishlist',
                  style: drawerSubtext,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new WishListScreen()));

                },
              )),
          new Container(
              margin: new EdgeInsets.only(left: 10.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new RecentOrderScreen()));
                },
                title: Text(
                  'My Orders',
                  style: drawerSubtext,
                ),
              )),
          new Container(
              margin: new EdgeInsets.only(left: 10.0),
              child: ListTile(
                title: Text(
                  'Logout',
                  style: drawerSubtext,
                ),
              )),
        ],
      ),
    );
  }
}
