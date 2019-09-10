
import 'package:flutter/material.dart';
import 'Horizontal_Listview.dart';
import 'Gridview.dart';
import 'carousel.dart';



class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Fashapp"),
  backgroundColor: Colors.pink,
  actions: <Widget>[
   IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: (){},),
   IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){},)
   
  ],
  
  ),
  drawer: new Drawer(
child: new ListView(

children: <Widget>[
                                                                                          //    HEader
new UserAccountsDrawerHeader(
accountEmail: Text("alirezaghorbani5230@gmail.com"),
accountName: Text("alireza ghorbani"),
currentAccountPicture: GestureDetector(
  child: CircleAvatar(
    backgroundColor: Colors.grey,
    child: Icon(Icons.person,color: Colors.white,size: 27.0,),
    
  ),
),
decoration:new BoxDecoration(color: Colors.pink )
),
                                                                                                 ///body
InkWell(
  onTap: (){},
  child:   ListTile(
  title: Text("Home Page"),
  leading: Icon(Icons.home),
  ),
),
InkWell(
  onTap: (){},
  child:   ListTile(
  title: Text("My Account"),
  leading: Icon(Icons.person),
  ),
),
InkWell(
  onTap: (){},
  child:   ListTile(
  title: Text("My Orders"),
  leading: Icon(Icons.shopping_basket),
  ),
),
InkWell(
  onTap: (){},
  child:   ListTile(
  title: Text("Categoris"),
  leading: Icon(Icons.dashboard),
  ),
),
InkWell(
  onTap: (){},
  child:   ListTile(
  title: Text("Favorite"),
  leading: Icon(Icons.favorite),
  ),
),
Divider(),
InkWell(
  onTap: (){},
  child:   ListTile(
  title: Text("Setting",),
  leading: Icon(Icons.settings,color: Colors.green,),
  ),
),
InkWell(
  onTap: (){},
  child:   ListTile(
  title: Text("About"),
  leading: Icon(Icons.info,color:Colors.blue),
  ),
)

],

),

  ),

body: new ListView(
  children: <Widget>[
Carusell(),//image corusel
Padding(padding: EdgeInsets.all(12.0),child: new Text("Categories",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold
,fontSize: 14
),),),//padding for categories text
 //horizontal list view 
HorizontalList(),
Padding(padding: EdgeInsets.all(12.0),child: new Text("Recent products",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),),


//grid view
Grid()

  ],
),
    );
  }
}


