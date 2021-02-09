import 'package:flutter/material.dart';

class MatchContainer extends StatefulWidget {
  @override
  _MatchScreenWidget createState() => _MatchScreenWidget();
}

class _MatchScreenWidget extends State<MatchContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Match',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.black87,

      ),
    );
  }
}
