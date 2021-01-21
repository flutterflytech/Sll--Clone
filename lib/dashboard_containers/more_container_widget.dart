import 'dart:ui';

import 'package:flutter/material.dart';

class MoreContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('More',
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold)),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                getSimplerUI(context,
                    title1: 'Browse Series',
                    title2: 'Browse Teams',
                    title3: 'Browse Player',
                    icon1: Icons.wine_bar,
                    icon2: Icons.people,
                    icon3: Icons.people, onTapFirst: () {
                  print('Browse Series');
                }, onTapSecond: () {
                  print('Browse Team');
                }, onTapThird: () {
                  print('Browse Player');
                }),
                SizedBox(
                  height: 10.0,
                ),
                getSimplerUI(context,
                    title1: 'Ranking',
                    title2: 'News',
                    title3: 'Highlights',
                    icon1: Icons.people,
                    icon2: Icons.tv,
                    icon3: Icons.tv, onTapFirst: () {
                  print('Ranking');
                }, onTapSecond: () {
                  print('News');
                }, onTapThird: () {
                  print('Highlights');
                }),
                SizedBox(
                  height: 10.0,
                ),
                getSimplerUI(context,
                    title1: 'Youtube',
                    title2: 'Instagram',
                    title3: 'Facebook',
                    icon1: Icons.people,
                    icon2: Icons.people,
                    icon3: Icons.people, onTapFirst: () {
                  print('Youtube');
                }, onTapSecond: () {
                  print('Instagram');
                }, onTapThird: () {
                  print('Facebook');
                }),
                SizedBox(
                  height: 10.0,
                ),
                getSimplerUI(context,
                    title1: 'Share App',
                    title2: 'Rate App',
                    title3: 'Feedback',
                    icon1: Icons.share,
                    icon2: Icons.star_border,
                    icon3: Icons.feedback, onTapFirst: () {
                  print("share APP");
                }, onTapSecond: () {
                  print("RateAPP");
                }, onTapThird: () {
                  print("Feedback");
                }),
                SizedBox(
                  height: 10.0,
                ),
                getSimplerUI(context,
                    title1: 'Setting',
                    title2: 'Terms of use',
                    title3: 'Privacy Policy',
                    icon1: Icons.settings,
                    icon2: Icons.branding_watermark_sharp,
                    icon3: Icons.privacy_tip_outlined, onTapFirst: () {
                  print("Setting");
                }, onTapSecond: () {
                  print("Terms of use");
                }, onTapThird: () {
                  print("Privacy");
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  getSimplerUI(
    BuildContext context, {
    String title1,
    String title2,
    String title3,
    IconData icon1,
    IconData icon2,
    IconData icon3,
    Function() onTapFirst,
    Function() onTapSecond,
    Function() onTapThird,
  }) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.black26),
        child: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 8.0, right: 8.0, bottom: 8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: onTapFirst,
                  child: Row(
                    children: <Widget>[
                      Icon(icon1, color: Colors.white, size: 30.0),
                      SizedBox(width: 15.0),
                      Text(title1,
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 15.0)
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: onTapSecond,
                  child: Row(
                    children: <Widget>[
                      Icon(icon2, color: Colors.white, size: 30.0),
                      SizedBox(width: 15.0),
                      Text(title2,
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 15.0)
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: onTapThird,
                  child: Row(
                    children: <Widget>[
                      Icon(icon3, color: Colors.white, size: 30.0),
                      SizedBox(width: 15.0),
                      Text(title3,
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 15.0),
                    ],
                  ),
                ),
              ],
            )));
  }
}
