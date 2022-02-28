import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        body: Stack(
          children: <Widget>[
            Container (
              color : Colors.greenAccent,
              height : 250
            ),
            Positioned(
              top : 195,
              left : 155,
              child : Container(
                height: 50,
                width: 250,
                color : Colors.black26,
                child : Center(
                  child : Text(
                    "Stack & Position",
                    style : TextStyle( 
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                  )
                )
              )
            )
          ],
        )
      )
    );
  }
}