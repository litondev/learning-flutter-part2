import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold( 
        body: Column(
          children: <Widget>[
            Flexible(
              flex : 1,
              child: Row( 
                children: <Widget>[
                  Flexible(
                    flex : 1,
                    child: Container(
                      color: Colors.pink
                    ),
                  ),
                  Flexible(
                    flex : 2,
                    child: Container(
                      color : Colors.pink[100]
                    )
                  ),
                  Flexible(
                    flex : 2,
                    child: Container(
                      color : Colors.pink[200]
                    )
                  )
                ],
              ),
            ),

            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color : Colors.amber[100],
                  borderRadius: BorderRadius.circular(40)
                ),
              ),
            ),

            Spacer(flex: 2,),
            
            Flexible(
              flex : 1,
              child : Container(
                color : Colors.blueGrey
              )
            )
          ],
        )
      )
    );
  }
}