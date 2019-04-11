import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0,top:10.0),
      child: Divider(
        color: Colors.grey,
      ),
    );
  }
}
