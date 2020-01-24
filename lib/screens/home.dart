import 'package:flutter/material.dart';

import '../core/util.dart';


class Home extends StatefulWidget {
  static const routeName = '/home';

  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.BodyBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Home')
        ],
      ),
    );
  }
}
