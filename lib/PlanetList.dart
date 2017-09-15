import 'package:flutter/material.dart';
import 'package:planets/PlanetRow.dart';
import 'package:planets/model/Planets.dart';

class PlanetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: new Container(
        color: const Color(0xFF3E3963),
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: new ListView.builder(
          itemCount: planets.length,
          itemBuilder: (_, index) => new PlanetRow(planets[index]),
        ),
      ),
    );
  }
}