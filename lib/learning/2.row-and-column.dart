import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        body : Column(
          children: <Widget>[
            Container(
              width : 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                shape : BoxShape.circle
              ),            
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color : Colors.blueAccent,
                shape: BoxShape.circle
              ),

            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape : BoxShape.circle
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                  ),
                )
              ],
            )
          ],
        )
      )
    );
  }
}