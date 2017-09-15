import 'package:flutter/material.dart';
import 'package:planets/model/Planet.dart';

class PlanetRow extends StatelessWidget {

  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      alignment: new FractionalOffset(0.0, 0.5),
      margin: const EdgeInsets.only(left: 24.0),
      child: new Image(
        image: new AssetImage(planet.image),
        height: 100.0,
        width: 100.0,),
    );

    final planetCard = new Container(
      margin: const EdgeInsets.only(left: 74.0, right: 24.0),
      decoration: new BoxDecoration(
        color: const Color(0xFF434273),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(15.0),
        boxShadow: <BoxShadow> [
          new BoxShadow(color: Colors.black, blurRadius: 10.0, offset: new Offset(0.0, 10.0))
        ],
      ),
    );

    return new Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}

