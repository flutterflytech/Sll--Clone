import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
                  child: PageView(
                    children: <Widget>[
                      pageViewUI(),
                      pageViewUI(),
                      pageViewUI(),
                      pageViewUI(),
                      pageViewUI(),
                      pageViewUI(),
                    ],
                    controller: controller,
                    reverse: false,
                  ),
                  align: IndicatorAlign.bottom,
                  length: 6,
                  shape: IndicatorShape.defaultOval,
                  indicatorSelectorColor: Colors.cyan,
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

pageViewUI() {
  return Stack(
    children: [
      Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30))),
      ),
      Positioned(
        left: 10.0,
        top: 12.0,
        child: Text(
          "Live",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Docklands Stadium, Melbourne",
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          ],
        ),
      ),
      Stack(
        children: <Widget>[
          Container(
            width: 40.0,
            height: 20.0,
            margin: EdgeInsets.fromLTRB(285, 15, 20, 10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 255), width: 1),
              borderRadius: BorderRadius.circular(15),
              shape: BoxShape.rectangle,
            ),
          ),
          Positioned(
              left: 25,
              top: 20,
              child: Container(
                padding: EdgeInsets.only(bottom: 10, left: 276, right: 5),
                child: Text(
                  'Pin',
                  style: TextStyle(color: Colors.white, fontSize: 9),
                ),
              )),
          Positioned(
            top: 20,
            child: Container(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 290),
              child: Icon(
                Icons.push_pin,
                size: 10.0,
                color: Colors.white,
              ),
            )),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BBL 48th T20 Match, 22-Jan-2021 at 01:45PM-Fri",
              style: TextStyle(color: Colors.white, fontSize: 11.0),
            ),
          ],
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 85.0, left: 122),
          child: Text(
            "3.0 ov",
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 75.0, left: 155),
        child: Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(50))),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 85.0, left: 165),
        child: Text(
          "VS",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 85.0, left: 190),
          child: Text(
            "20.0 ov",
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 115.0, left: 140),
        child: Container(
          height: 18.0,
          width: 25.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
              color: Colors.cyan),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 119.0, left: 148),
        child: Text(
          "42",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 115.0, left: 170),
        child: Container(
          height: 18.0,
          width: 25.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
              color: Colors.cyan),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 119.0, left: 178),
        child: Text(
          "38",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 140.0, left: 153),
        child: Text(
          'Fav- ST',
          style: TextStyle(color: Colors.white, fontSize: 11.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 170, left: 160),
        child: Text(
          "Ball",
          style: TextStyle(color: Colors.red, fontSize: 11.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 65.0, left: 15.0),
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              'https://www.clipartkey.com/mpngs/m/218-2187637_icon-india-flag-india-flag-circle-png.png'),
          backgroundColor: Colors.transparent,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 135.0, left: 33.0),
        child: Text(
          "India",
          style: TextStyle(
              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 150.0, left: 23),
        child: Container(
          height: 18.0,
          width: 40.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
              color: Colors.grey),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 154.0, left: 30),
        child: Text(
          "336/0",
          style: TextStyle(color: Colors.white, fontSize: 11.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 65.0, left: 265.0),
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              'https://image.shutterstock.com/image-vector/uk-flag-glossy-button-260nw-457386484.jpg'),
          backgroundColor: Colors.transparent,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 135.0, left: 275.0),
        child: Text(
          "England",
          style: TextStyle(
              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 150.0, left: 275),
        child: Container(
          height: 18.0,
          width: 40.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
              color: Colors.grey),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 154.0, left: 283),
        child: Text(
          "36/10",
          style: TextStyle(color: Colors.white, fontSize: 11.0),
        ),
      ),
    ],
  );
}
