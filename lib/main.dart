import 'package:flutter/material.dart';
import 'package:planets/ui/home/HomePage.dart';
import 'package:planets/ui/planet_detail/PlanetDetailPage.dart';

void main() {
  runApp(new MaterialApp(
    title: "Planets",
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      '/detail': (BuildContext context) => new PlanetDetailPage()
    },
  ));
}
