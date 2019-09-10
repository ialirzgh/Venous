import 'package:flutter/material.dart';
import 'Pages/1/Incoming.dart';
import 'Pages/1/Stack.dart';
import 'Pages/1/Types.dart';
void main (){
  print("salam");
runApp(

new MaterialApp(
  home: new Scaffold(
    drawer: Drawer(),
    body: new ListView(
children: <Widget>[

Firststack(),

Padding(padding: EdgeInsets.all(10.0),child: 
Text("Incoming games",style: TextStyle(fontSize: 17),
),),
Incoming(),
Padding(padding: EdgeInsets.all(10.0),child: 
Text("Categories",style: TextStyle(fontSize: 17),
),),
Types(),


],

    ),
  ),
)

);
}

