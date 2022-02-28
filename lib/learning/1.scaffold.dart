import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          leading : Icon(Icons.dashboard),
          title: Text("Testing"),
          actions: <Widget>[
            Icon(Icons.search)
          ],
          actionsIconTheme: IconThemeData(
            color: Colors.yellow
          ),
          backgroundColor: Colors.pinkAccent,
          bottom : PreferredSize(
            child : Container( 
              color : Colors.orange,
              height: 4.0,
            ),
            preferredSize: Size.fromHeight(4.0),
          ),
          centerTitle: true,
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          child : Text("+"),
          onPressed: (){},
        ),

        body : Text("Hello")
      )
    );
  }
}