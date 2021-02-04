import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:sll_android/dashboard_containers/live_container_widget.dart';

class CricketScreen extends StatefulWidget{
  @override
  _CricketScreenWidget createState() => _CricketScreenWidget();
}

class _CricketScreenWidget extends State<CricketScreen>{
  int counter = 0;
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}