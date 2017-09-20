import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:planets/ui/planet_detail/PlanetDetailPage.dart';

class Routes {
  static final Router _router = new Router();


  static var planetDetailHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new PlanetDetailPage(params["id"]);
    });

  static void initRoutes() {
    _router.define("/detail/:id", handler: planetDetailHandler);
  }

  static void navigateTo(context, String route, {TransitionType transition}) {
    _router.navigateTo(context, route, transition: transition);
  }

}