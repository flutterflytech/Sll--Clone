import 'package:flutter/material.dart';

class CricketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: new SizedBox(
          height: 80.0,
          child: new Center(
            child: new Text(
              "Cricket",
              style: new TextStyle(color: Colors.black),
            ),
          ),
        )
    );
  }


}