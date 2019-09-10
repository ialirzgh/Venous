import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

var Incoming_list;

class Incoming extends StatefulWidget {
  @override
  _IncomingState createState() => _IncomingState();
}


class _IncomingState extends State<Incoming> {

 

@override
  void initState() {
   
    super.initState();
    GetIncoming();
  }
  Future<List> GetIncoming() async{
var Result = await http.get("https://reza-fathi.ir/dach%20ali/Incoming.php");
Incoming_list =jsonDecode(Result.body);
 return Incoming_list;

}


  @override
  Widget build(BuildContext context) {
    var dimen = MediaQuery.of(context).size;
    return Container(
      width: dimen.width,
      height: dimen.height/100*33,
      color: Colors.white,
      child: Inc(Incoming_list)
    );
  }
}

 class Inc extends StatelessWidget {
   final List inclist;
   Inc(this.inclist);

   @override
   Widget build(BuildContext context) {
     var dimen = MediaQuery.of(context).size;
     return ListView.builder(
       scrollDirection: Axis.horizontal,
       itemCount: inclist.length,
       itemBuilder: (context,index){
     return Card(
child: Container(
 
  width: dimen.width/100*40,
  height: dimen.height/100*25,
color: Colors.white,
 
child: Column(
children: <Widget>[
SizedBox(
  
width: dimen.width/100*40,
height: dimen.height/100*26.1,
child: Image.network(inclist[index]['Img'],fit: BoxFit.cover,),
),

Container(color: Colors.grey[300],

width: dimen.width/100*40,
padding: EdgeInsets.all(5.0),
child: Text(inclist[index]['Name'],textAlign: TextAlign.center,style: 
TextStyle(color: Colors.black,fontWeight: FontWeight.w700,),),),

Container(
 
  padding: EdgeInsets.all(1.0),
  width: dimen.width/100*40,
color: Colors.grey[300],
  child: Text(inclist[index]['Date'],textAlign: TextAlign.center,style: 
  TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),),



],

),
  
),


     );

       },
     );
   }
 }


