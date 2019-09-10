import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart'as http;
import 'dart:convert';



List type_list;



class Types extends StatefulWidget {
  @override
  _TypesState createState() => _TypesState();
}




class _TypesState extends State<Types> {




  
  @override
  void initState() {
    super.initState();
    get_type();
  }


  Future<List> get_type() async{
  var result = await http.get('https://reza-fathi.ir/dach%20ali/Categories.php');
   type_list = jsonDecode(result.body);


  return type_list;

  }

  



 @override
  Widget build(BuildContext context) {
   
    var dimen = MediaQuery.of(context).size;
 
    
    return Container(
      margin: EdgeInsets.only(left: 5.0),
      color: Colors.white,
      width:dimen.width,
      height: dimen.height/100*5,
      
       child: Category(type_list)
    );
  }
}


class Category extends StatelessWidget  {
  final List typename;

  Category(this.typename);
  @override
  Widget build(BuildContext context) {
    var dimen = MediaQuery.of(context).size;
    return  ListView.builder(
scrollDirection:Axis.horizontal,
 itemCount: typename.length,
 itemBuilder: (context , i){
   return
   Padding(
      padding: EdgeInsets.only(right:10.0),
       child: Container(
         width: dimen.width/100*30,
         height: dimen.height/100*5,
         decoration: BoxDecoration(

          gradient: LinearGradient(
colors: [Colors.orangeAccent,Colors.purpleAccent],

          )

         ),
         child: MaterialButton(
       onPressed: (){},
child: Text(typename[i]['Categori'],style: TextStyle(fontSize: 15,color: Colors.white),),

         ),
       ),



    );
 },
       );
  }

}






