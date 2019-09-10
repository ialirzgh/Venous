import 'package:flutter/material.dart';




class Firststack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dimen = MediaQuery.of(context).size;
    return Stack(
children: <Widget>[
                                      //back ground image
Container(
width: dimen.width,
height: dimen.height/100*45,
child: Image.asset("img/222.jpg",
fit: BoxFit.fitHeight,
),                                   //end of backgroudn

),
new Column(
  children: <Widget>[
    Center(
      child:Container(
        margin: EdgeInsets.only(top: dimen.height/100*4),
        
        padding: EdgeInsets.all(5.0),
  width: dimen.width/100*90,
  height: 50.0,
  decoration: BoxDecoration(border: Border.all(color: Colors.white,width:1)),
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.start,
children: <Widget>[
Icon(Icons.search,color: Colors.white,size: 27,),
Expanded(
  child: TextField(
decoration: new InputDecoration(
hintText: "What are you Looking for?",
border: OutlineInputBorder(),
hintStyle: TextStyle(color: Colors.white),
contentPadding: EdgeInsets.all(6.0)
),
style: TextStyle(color: Colors.white,),
  ),
),
InkWell(
child: Icon(Icons.menu,color: Colors.white,size: 27,),
onTap: (){
 Scaffold.of(context).openDrawer();
},
)

],

  ),
),

),
Container(
  child: Text("NEW GAME",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
margin: EdgeInsets.only(top: dimen.height/100*13)
,),
Container(
  margin: EdgeInsets.only(top: dimen.height/100*2),
child: Text("Call of Duty Black Ops 4",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
),
Container(
  margin: EdgeInsets.only(top:dimen.height/100*2),
width: dimen.width/100*30,
decoration: BoxDecoration(
 color: Colors.yellow

 
),
height: dimen.height/100*4,
child: MaterialButton(
onPressed: (){},
child: Text("Buy"),

),
)
]
,)
                         
],
    );
  }
}