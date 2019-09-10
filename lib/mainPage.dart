import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


List decode;



class Ialirzgh extends StatefulWidget {
  @override
  _IalirzghState createState() => _IalirzghState();
}

class _IalirzghState extends State<Ialirzgh> {

 Future<List> get_ali() async{
  var response =  await http.get('https://reza-fathi.ir/alireza/porforosh.php');
   decode = jsonDecode(response.body);



 }

 @override
  void initState() {
  
    super.initState();
      get_ali();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(decode[0]['title']),
    );
  }
}