import 'package:flutter/material.dart';


class MyApp extends StatelessWidget{
  final List<Map<String,dynamic>> _categories = [
    {"cat" : "A1","color" : Colors.pink},
    {"cat" : "B2","color" : Colors.red},
    {"cat" : "C3","color" : Colors.blue}
  ];

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        body: Container(
          margin : EdgeInsets.all(5),
          child : GridView.builder(
            itemCount: _categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(          
              crossAxisCount: 3,
              mainAxisSpacing: 3.0, 
              crossAxisSpacing: 3, 
              childAspectRatio: 1.0, 
            ),
            itemBuilder: (context,index) {
              return Container(
                color:  _categories[index]['color'],
                height: 200,
                child : Center(
                  child: Text(
                    _categories[index]["cat"]

                  ),
                )
              );
            },                   
          )
        ), 
      )
    );
  }
}

// EXAMPLE 1
// class MyApp extends StatelessWidget{
//   @override 
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home : Scaffold(
//         body: Container(
//           margin : EdgeInsets.all(5),
//           child : GridView(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(          
//               crossAxisCount: 3,
//               mainAxisSpacing: 3.0, 
//               crossAxisSpacing: 3, 
//               childAspectRatio: 1.0, 
//             ),
//             children: <Widget>[
//               Container(
//                 color: Colors.pink,
//                 height : 200,
//                 child : Center(
//                   child: Text(
//                     'Flutter',
//                     style: TextStyle(
//                       color : Colors.white,
//                       fontWeight: FontWeight.bold
//                     ),
//                   ),
//                 )
//               ),
//               Container(
//                 color: Colors.red,
//                 height : 200,
//                 child : Center(
//                   child: Text(
//                     'Flutter',
//                     style: TextStyle(
//                       color : Colors.white,
//                       fontWeight: FontWeight.bold
//                     ),
//                   ),
//                 )
//               ),
//                Container(
//                 color: Colors.red,
//                 height : 200,
//                 child : Center(
//                   child: Text(
//                     'Flutter',
//                     style: TextStyle(
//                       color : Colors.white,
//                       fontWeight: FontWeight.bold
//                     ),
//                   ),
//                 )
//               )
//             ],
//           )
//         ), 
//       )
//     );
//   }
// }