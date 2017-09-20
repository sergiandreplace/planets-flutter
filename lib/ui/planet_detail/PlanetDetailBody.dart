import 'package:flutter/material.dart';
import 'package:planets/Theme.dart' as Theme;

class PlanetDetailBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Container(
          color: Theme.Colors.planetPageBackground,
        ),
      ]
    );
  }
}