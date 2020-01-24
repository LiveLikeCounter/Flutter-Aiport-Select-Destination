import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/util.dart';
// import 'models/customer.dart';
// import 'dummy_data.dart';

import 'screens/home.dart';


void main() { runApp(App()); }

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // List<Customer> _customers = DUMMY_CUSTOMER;

  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        //statusBarColor: Colors.transparent, //top bar color
      ),
    );
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: CustomColors.BodyBackground,
        fontFamily: 'rubik',
      ),
      title: 'TODO',
      initialRoute: '/home',
      routes: {
        '/': (ctx) => Home(),
        Home.routeName: (ctx) => Home(),
        // Customers.routeName: (ctx) => Customers(
        //       customerList: _customers,
        //     ),
      },
      onGenerateRoute: (settings) {
        // print(settings.arguments);
        // print(settings.name);
        return;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => Home(),
        );
      },
    );
  }
}
