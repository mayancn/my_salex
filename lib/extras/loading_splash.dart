import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mysalex_mobile/Pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepPurpleAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.amberAccent,
                        radius: 40.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.black12,
                          size: 40.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18.0),
                      ),
                      Text(
                        'MySalex',
                        style: TextStyle(
                          color: Colors.white10,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "stealing your credentials :)",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white10,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ], 
      ),
    );
  }
}