
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        body: Container(
          child : Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  backgroundHeader(),
                  summaryCash()
                ],                
              ),
              cardDetail("Makan Siang","Beli makan di warung","10.000","out"),
              cardDetail("Makan Siang","Beli makan di warung","10.000","out"),
              cardDetail("Makan Siang","Beli makan di warung","10.000","out"),
            ],
          )
        ),
      )
    );
  }
}

Widget cardDetail(title,description,price,type){
  return Card(
    margin : EdgeInsets.only(top: 15,left : 15,right : 15),
    elevation: 8.0,
    child: ListTile(
      leading: Icon(
        type == 'out' ? Icons.subdirectory_arrow_left : Icons.subdirectory_arrow_right,
        color: type == 'out' ? Colors.redAccent : Colors.lightGreen,
      ),
      title : Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(description),
      trailing: Text(
        "Rp "+price,
        style: TextStyle(color: type == 'out' ? Colors.redAccent:Colors.lightGreen),
      ),
    )
  );
}

Widget summaryCash(){
  return Positioned(
    top : 180,
    left : 20,
    child: Container(
      width: 370,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child : Padding(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Penghasilan"),
                Divider(),
                Text(
                  "Rp.50.000",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text("Pengluaran"),
                Divider(),
                Text( 
                  "Rp.260.00",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            )
          ],
        ),
      )
    )
  );
}

Widget backgroundHeader(){
  return Container(
    height : 300,
    width : double.infinity,
    decoration: BoxDecoration(
      color: Colors.redAccent,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10)
      )
    ),
    child: Padding(
      padding : EdgeInsets.only(
        top : 60,
        left : 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Data",
            style: TextStyle( 
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold   
            ),
          ),
          Text(
            "08978",
            style : TextStyle(
              fontSize: 15,
              color: Colors.white
            )
          )
        ],
      ),
    ),
  );
}
