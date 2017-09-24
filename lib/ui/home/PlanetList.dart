import 'package:flutter/material.dart';
import 'package:planets/ui/home/PlanetRow.dart';
import 'package:planets/Theme.dart' as Theme;
import 'package:planets/model/Planets.dart';

class PlanetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: new Container(
        color: Theme.Colors.planetPageBackground,
        child: new ListView.builder(
          itemExtent: 160.0,
          itemCount: PlanetDao.planets.length,
          itemBuilder: (_, index) => new PlanetRow(PlanetDao.planets[index]),
        ),
      ),
    );
  }
}