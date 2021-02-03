import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:page_indicator/page_indicator.dart';

class LiveContainer extends StatefulWidget {
  @override
  _LiveScreenWidget createState() => _LiveScreenWidget();
}

class _LiveScreenWidget extends State<LiveContainer> {
  int counter = 0;
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'LIVE MATCHES',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
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
      ),
    );
  }
}

pageViewUI() {
  return Stack(
    children: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(30))),
                child: Center(
                  child: Text(
                    "Live",
                    style: TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Docklands Stadium, Melbourne",
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0, top: 8.0),
                  child: SizedBox(
                    width: 40.0,
                    height: 20.0,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(15),
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.push_pin,
                              size: 10.0,
                              color: Colors.white,
                            ),
                            Text('Pin',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 9.0)),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '18th T10 Match Super League, 02-Feb-2021 \nat 10:00PM-Tue',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://www.clipartkey.com/mpngs/m/218-2187637_icon-india-flag-india-flag-circle-png.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  Text(
                    "India",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Second Column',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Third Column',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ],
  );
}
