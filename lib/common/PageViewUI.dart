import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewUI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return pageViewUI();
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
                height: 38.0,
                width: 31.0,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(25))),
                child: Center(
                  child: Text(
                    "Live",
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
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
          Padding(
            padding: const EdgeInsets.only(top:11.0),
            child: Row(
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
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "India",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        height: 18.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 5)),
                            color: Colors.grey),
                        child: Center(
                            child: Text(
                              '336/0',
                              style: TextStyle(fontSize: 9.0, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '85.5ov',
                          style: TextStyle(color: Colors.white, fontSize: 11.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                            child: Center(
                                child: Text('VS',
                                    style: TextStyle(
                                        fontSize: 10.0, color: Colors.white))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            '32.5ov',
                            style: TextStyle(color: Colors.white, fontSize: 11.0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 18.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(5, 5)),
                                color: Colors.cyan),
                            child: Center(child: Text('46',style: TextStyle(fontSize: 9.0,color: Colors.white),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              height: 18.0,
                              width: 25.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                                  color: Colors.cyan),
                              child: Center(child: Text('54',style: TextStyle(fontSize: 9.0,color: Colors.white),)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text('Fav-India',style: TextStyle(fontSize: 10.0,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Text('Live on Sony Six',style: TextStyle(fontSize: 10.0,color: Colors.red),),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://image.shutterstock.com/image-vector/uk-flag-glossy-button-260nw-457386484.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "England",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        height: 18.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 5)),
                            color: Colors.grey),
                        child: Center(
                            child: Text(
                              '36/10',
                              style: TextStyle(fontSize: 9.0, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ],
  );
}