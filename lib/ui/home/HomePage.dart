import 'package:flutter/material.dart';
import 'package:planets/ui/home/GradientAppBar.dart';
import 'package:planets/ui/home/PlanetList.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => new _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {

  ScrollController controller = new ScrollController();

  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new GradientAppBar("treva"),
        new PlanetList(controller, _value),
      ],
    );
  }

  @override
  void initState()  {
    super.initState();
    controller.addListener(() {
      _value = controller.offset;
      setState(() {});
    });
  }
}






