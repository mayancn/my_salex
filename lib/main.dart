import 'package:flutter/material.dart';
import 'package:mysalex_mobile/Pages/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Salex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'My Salex'),
    );
  }
}
