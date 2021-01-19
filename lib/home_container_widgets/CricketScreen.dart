import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CricketScreen extends StatelessWidget {
  var currentPageIndex = 0.0;

  _onPageViewChange(int page) {
    currentPageIndex = page.toDouble();

    int previousPage = page;
    if(page != 0) previousPage--;
    else previousPage = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.67,
          width: MediaQuery.of(context).size.width,
          child: PageView(
            onPageChanged: _onPageViewChange,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      'https://static.toiimg.com/thumb/msid-58475411,width-748,height-499,resizemode=4,imgsize-142947/.jpg'),
                )),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://static.toiimg.com/thumb/msid-58475411,width-748,height-499,resizemode=4,imgsize-142947/.jpg'))),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://static.toiimg.com/thumb/msid-58475411,width-748,height-499,resizemode=4,imgsize-142947/.jpg'))),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://static.toiimg.com/thumb/msid-58475411,width-748,height-499,resizemode=4,imgsize-142947/.jpg'))),
              ),
            ],
          ),
        ),
        Container(
          child: DotsIndicator(
            dotsCount: 4,
            position: currentPageIndex,
            decorator: DotsDecorator(
              activeColor: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
