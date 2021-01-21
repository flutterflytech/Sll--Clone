import 'package:flutter/material.dart';
import 'package:sll_android/dashboard_containers/home_container_widget.dart';
import 'package:sll_android/dashboard_containers/live_container_widget.dart';
import 'package:sll_android/dashboard_containers/match_container_widget.dart';
import 'package:sll_android/dashboard_containers/polls_container_widget.dart';
import 'package:sll_android/dashboard_containers/more_container_widget.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashBoard extends StatefulWidget {
  @override
  BottomNavigation createState() => BottomNavigation();
}

class BottomNavigation extends State<DashBoard> {
  var _selectedTab = _SelectedTab.home;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'salomon_bottom_bar',
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: getBody(),
            ),
            SalomonBottomBar(
              currentIndex: _SelectedTab.values.indexOf(_selectedTab),
              onTap: _handleIndexChanged,
              items: [
                /// Home
                SalomonBottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  selectedColor: Colors.purple,
                ),

                /// Likes
                SalomonBottomBarItem(
                  icon: Icon(Icons.live_tv),
                  title: Text("Live"),
                  selectedColor: Colors.pink,
                ),

                /// Search
                SalomonBottomBarItem(
                  icon: Icon(Icons.sports_cricket),
                  title: Text("Matches"),
                  selectedColor: Colors.orange,
                ),

                /// Profile
                SalomonBottomBarItem(
                  icon: Icon(Icons.poll_sharp),
                  title: Text("Polls"),
                  selectedColor: Colors.teal,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.more_vert),
                  title: Text("More"),
                  selectedColor: Colors.lightBlueAccent,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  getBody() {
    switch (_selectedTab) {
      case _SelectedTab.home:
        return HomeContainer();
      case _SelectedTab.live:
        return LiveContainer();
      case _SelectedTab.matches:
        return MatchContainer();
      case _SelectedTab.polls:
        return PollsContainer();
      default:
        return MoreContainer();
    }
  }
}

enum _SelectedTab { home, live, matches, polls, more }
