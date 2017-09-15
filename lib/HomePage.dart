import 'package:flutter/material.dart';
import 'package:planets/GradientAppBar.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("planets"),
          new PlanetList(),
        ],
      ),
    );
  }
}

class PlanetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container();
  }
}

