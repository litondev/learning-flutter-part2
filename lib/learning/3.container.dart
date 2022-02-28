import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        body : Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          color: Colors.pinkAccent,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              gradient: LinearGradient(
                begin : Alignment.topCenter,
                end : Alignment.bottomCenter,
                colors: [
                  Colors.lightBlue,
                  Colors.lightGreen
                ]
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: <BoxShadow>[
                BoxShadow(blurRadius: 20)
              ]
            ),
          ),
        )
      )
    );
  }
}