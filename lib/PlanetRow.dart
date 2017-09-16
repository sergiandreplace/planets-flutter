import 'package:flutter/material.dart';
import 'package:planets/Theme.dart' as Theme;
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
        height: Theme.Dimens.planetHeight,
        width: Theme.Dimens.planetWidth,),
    );

    final planetCard = new Container(
      margin: const EdgeInsets.only(left: 72.0, right: 24.0),
      decoration: new BoxDecoration(
        color: Theme.Colors.planetCard,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(color: Colors.black,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0))
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 16.0, left: 72.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(planet.name, style: Theme.TextStyles.planetTitle),
            new Text(planet.location, style: Theme.TextStyles.planetLocation),
            new Container(
              color: const Color(0xFF00C6FF),
              width: 24.0,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0)
            ),
            new Row(
              children: <Widget>[
                new Icon(Icons.location_on, size: 14.0, color: Theme.Colors.planetDistance),
                new Text(planet.distance, style: Theme.TextStyles.planetDistance),
                new Container(width: 24.0),
                new Icon(Icons.flight_land, size: 14.0, color: Theme.Colors.planetDistance),
                new Text(planet.gravity, style: Theme.TextStyles.planetDistance),
              ],
            )
          ],
        ),
      ),
    );

    return new Container(
      height: 120.0,
      margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}

