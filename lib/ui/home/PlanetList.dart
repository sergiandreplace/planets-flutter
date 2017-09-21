import 'package:flutter/material.dart';
import 'package:planets/Theme.dart' as Theme;
import 'package:planets/model/Planets.dart';
import 'package:planets/ui/home/PlanetRow.dart';

class PlanetList extends StatelessWidget {
  ScrollController controller;

  var value;

  PlanetList(this.controller, this.value) ;

  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: new Container(
        color: Theme.Colors.planetPageBackground.withAlpha((value).toInt()),
        child: new ListView.builder(
          itemExtent: 160.0,
          itemCount: planets.length,
          itemBuilder: (_, index) => new PlanetRow(planets[index]),
          controller: controller,
        ),
      ),
    );
  }
}