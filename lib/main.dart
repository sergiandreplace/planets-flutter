import 'package:flutter/material.dart';
import 'package:planets/PlanetsPageRoute.dart';
import 'package:planets/ui/home/HomePage.dart';
import 'package:planets/ui/planet_detail/PlanetDetailPage.dart';

void main() {
  runApp(new MaterialApp(
    title: "Planets",
    home: new HomePage(),
    onGenerateRoute: routeFactory,
  ));
}

RouteFactory routeFactory = (RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return new PlanetsPageRoute(
        builder: (_) => new HomePage(), settings: settings);
    case '/detail':
      return new PlanetsPageRoute(
        builder: (_) => new PlanetDetailPage(), settings: settings);
  }
};
