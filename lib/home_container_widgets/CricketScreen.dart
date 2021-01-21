import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_indicator/page_indicator.dart';

class CricketScreen extends StatelessWidget {
  int counter = 0;
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                color: Colors.black38,
                height: 200.0,
                child: PageIndicatorContainer(
                  key: key,
                  child: PageView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "One",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text("Two"),
                      Text("Three"),
                      Text("Four"),
                      Text("Five"),
                      Text("Six"),
                    ],
                    controller: controller,
                    reverse: false,
                  ),
                  align: IndicatorAlign.bottom,
                  length: 6,
                  indicatorSpace: 5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
