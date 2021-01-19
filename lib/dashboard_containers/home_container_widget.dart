import 'package:flutter/material.dart';
import 'package:sll_android/home_container_widgets/BasketBallScreen.dart';
import 'package:sll_android/home_container_widgets/CricketScreen.dart';
import 'package:sll_android/home_container_widgets/FootBallScreen.dart';
import 'package:sll_android/home_container_widgets/HockeyScreen.dart';
import 'package:sll_android/home_container_widgets/Tennis.dart';


final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Working on it'));

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Sports Live Line',
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.info),
              tooltip: 'Info',
              onPressed: () {
                scaffoldKey.currentState.showSnackBar(snackBar);
              },
            ),
            IconButton(
              icon: const Icon(Icons.wb_sunny),
              tooltip: 'Change App theme',
              onPressed: () {
                scaffoldKey.currentState.showSnackBar(snackBar);
                // Navigator.pop(context);
              },
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.symmetric(horizontal: 13.0),
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.sports_cricket), text: "Cricket"),
              Tab(icon: Icon(Icons.sports_football), text: "Football"),
              Tab(icon: Icon(Icons.sports_tennis), text: "Tennis"),
              Tab(icon: Icon(Icons.sports_basketball), text: "Basketball"),
              Tab(icon: Icon(Icons.sports_hockey), text: "Hockey")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CricketScreen(),
            FootBallScreen(),
            Tennis(),
            BasketBallScreen(),
            HockeyScreen()
          ],
        ),
      ),
    ));
  }
}
