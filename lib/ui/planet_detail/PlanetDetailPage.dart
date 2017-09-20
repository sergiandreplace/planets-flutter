import 'package:flutter/material.dart';
import 'package:planets/ui/planet_detail/DetailAppBar.dart';
import 'package:planets/ui/planet_detail/PlanetDetailBody.dart';

class PlanetDetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new PlanetDetailBody(),
          new DetailAppBar(),
        ],
      ),
    );
  }
}
