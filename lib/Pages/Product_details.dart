import 'package:flutter/material.dart';



class ProductDetails extends StatefulWidget {
  final productdetailname;
  final productdetailpicture;
  final productdetailprice;
  final productdetailoldprice;

  ProductDetails({this.productdetailname,this.productdetailpicture,this.productdetailprice,this.productdetailoldprice});
  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<ProductDetails> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar:  AppBar(
  title: Text("Fashapp"),
  backgroundColor: Colors.pink,
  actions: <Widget>[
   IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: (){},),
   IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){},)
  ],
  ),
  
      body: ListView(
        children: <Widget>[
 new Container(
   width: MediaQuery.of(context).size.width,
   height: MediaQuery.of(context).size.height/100*35,
child: GridTile(
child: Container(
color: Colors.white,
child: Image.asset(widget.productdetailpicture),
),
footer: new Container(
color: Colors.white54,
child: ListTile(
  leading: new Text(widget.productdetailname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
  title: new Row(
    children: <Widget>[
Expanded(
  child: new Text("\$${widget.productdetailoldprice}",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
),
Expanded(
  child: new Text("\$${widget.productdetailprice}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
),

    ],
  ),
),

),
),
),

Row(
  //=========================firt chossing button=======================
 children: <Widget>[
Expanded(child: MaterialButton(
child: Row(children: <Widget>[Expanded(child: Text("Size"),),Expanded(child: Icon(Icons.arrow_drop_down),)],),
onPressed: (){}
  
)),

Expanded(child: MaterialButton(
child: Row(children: <Widget>[Expanded(child: Text("Color"),),Expanded(child: Icon(Icons.arrow_drop_down),)],),
onPressed: (){

},
)),

Expanded(child: MaterialButton(
child: Row(children: <Widget>[Expanded(child: Text("Quan"),),Expanded(child: Icon(Icons.arrow_drop_down),)],),
onPressed: (){

},
))
   




 ], //=================================end of chossing buttons childer=================================
),
Row(
  children: <Widget>[
Expanded(
  child: MaterialButton(
    onPressed: (){},
    color: Colors.pink,
    textColor: Colors.white,
    child: Text("Buy now"),
  ),
),
Padding(child: Icon(Icons.favorite,color: Colors.pink,),padding: EdgeInsets.symmetric(horizontal: 8.0),),
Padding(child: Icon(Icons.add_shopping_cart,color: Colors.pink,),padding: EdgeInsets.symmetric(horizontal: 8.0),),



      ],
),
Divider(),
new ListTile(

subtitle: Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
title: Text("Product details"),
),
Divider(),
new Row(
  children: <Widget>[
    Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: 
    new Text("Product name",style: TextStyle(color: Colors.grey),)
    ,)
  ],
),
new Row(
  children: <Widget>[
    Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: 
    new Text("Product brand",style: TextStyle(color: Colors.grey),)
    ,)
  ],
),
new Row(
  children: <Widget>[
    Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: 
    new Text("Product condition",style: TextStyle(color: Colors.grey),)
    ,)
  ],
)
      ],
      ),
    );
  }
}