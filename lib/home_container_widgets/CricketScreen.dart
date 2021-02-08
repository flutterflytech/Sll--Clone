import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:page_indicator/page_indicator.dart';

import '../common/PageViewUI.dart';

class CricketScreen extends StatefulWidget {
  @override
  _CricketScreenWidget createState() => _CricketScreenWidget();
}

class _CricketScreenWidget extends State<CricketScreen> {
  int counter = 0;
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                    child: Text(
                      'Series',
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext mCtx, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 8.0),
                      child: Container(
                        color: Colors.black38,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'India vs England',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 15.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
