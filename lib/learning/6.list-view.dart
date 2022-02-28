import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  @override 
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp>{
  List<String> data = ["Data","Data 1","Data 2"];

  void addData(){
    final incrementing = data.length + 1;

    setState(() {
      data.add(incrementing.toString());
    });
  }

  @override 
  Widget build(BuildContext context){
    return MaterialApp( 
      home : Scaffold( 
        floatingActionButton: FloatingActionButton(
          child: Text("+"), 
          onPressed: addData,
        ),
        body : ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: data.length,
          itemBuilder: (context,i){
            return Container(
              margin : EdgeInsets.all(10),
              height : 60,
              color : Colors.pinkAccent,
              child : Center (
                child: Text(data[i]),
              )
            );
          }
        )
      )
    );
  }
}

// EXAMPLE 1
// class _MyAppState extends State<MyApp>{
//   @override 
//   Widget build(BuildContext context){
//     return MaterialApp( 
//       home : Scaffold( 
//         body : ListView( 
//           padding : EdgeInsets.all(16.0),
//           children: <Widget>[
//             Container(
//               height : 60,
//               color : Colors.redAccent,
//               child: Center (
//                 child: Text("List View Flutter"),
//               )
//             ),

//             Container(
//               height : 60,
//               color : Colors.redAccent,
//               child: Center (
//                 child: Text("List View Flutter"),
//               )
//             ),

//             Container(
//               height : 60,
//               color : Colors.redAccent,
//               child: Center (
//                 child: Text("List View Flutter"),
//               )
//             ),
            
//             Container(
//               height : 60,
//               color : Colors.redAccent,
//               child: Center (
//                 child: Text("List View Flutter"),
//               )
//             ),                        
//           ],
//         )
//       )
//     );
//   }
// }