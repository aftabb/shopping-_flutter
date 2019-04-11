import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import 'dart:async';
import 'dart:convert';

class ExperiementClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Experiemnt")),
      body: new Random(),
    );
  }
}

class Random extends StatefulWidget {
  @override
  RandomStateClass createState() => new RandomStateClass();

//  @override
//  RandomStateClass createState() => new RandomStateClass();
}

class RandomStateClass extends State<Random> {
  int position;
  double count = 0.5;
  String name = "first";
  var jsonResponse = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

//
//  void getData() {
//    setState(() {
//     int position = 0;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    Future<String> _loadAStudentAsset() async {
      return await rootBundle.loadString('assets/student.json');
    }

    Future loadStudent() async {
      String jsonString = await _loadAStudentAsset();
      setState(() {
        jsonResponse = json.decode(jsonString);
        // Student student = new Student.fromJson(jsonResponse);
      });
    }

    loadStudent();
    // TODO: implement build
    return buisnessLogin();
  }

  Widget buisnessLogin() {
    if (jsonResponse == null) {
      return new Center(
        child: new CircularProgressIndicator(
          strokeWidth: 6.0,
        ),
      );
    } else {
      return new GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children:
            new List<Widget>.generate(jsonResponse['mens'].length, (index) {
          return Container(
              color: Colors.grey,
              child: new Center(
                child: Column(
                  children: <Widget>[
                    new Center(
                      child:
                          new Text(jsonResponse['mens'][index]['product_name']),
                    ),
                    new Center(
                      child: new Text(jsonResponse['mens'][index]['price']),
                    )
                  ],
                ),
              ));
        }),
      );
    }
  }
}
