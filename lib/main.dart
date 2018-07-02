// https://medium.com/@kashifmin/flutter-login-app-using-rest-api-and-sqflite-b4815aed2149

import 'package:flutter/material.dart';
import 'package:flutter_demo/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My Login App',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: routes,
    );
  }
}
