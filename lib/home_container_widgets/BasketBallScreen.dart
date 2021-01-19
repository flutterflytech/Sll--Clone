import 'package:flutter/material.dart';

class BasketBallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: new SizedBox(
          height: 80.0,
          child: new Center(
            child: new Text(
              "BasketBall",
              style: new TextStyle(color: Colors.black),
            ),
          ),
        ));
  }
}
