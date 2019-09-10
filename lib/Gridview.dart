import 'package:flutter/material.dart';
import 'Pages/Product_details.dart';

class  Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  var productlist = [{
   "name":"Dota2",
   "picture":"img/Product/dota.jpg",
   "old_price":25,
   "price":17.5
  },
  {
   "name":"Hitman2",
   "picture":"img/Product/hitman2.jpg",
   "old_price":35,
   "price":29
  },
  {
   "name":"Residnt evil2",
   "picture":"img/Product/re2.jpg",
   "old_price":150,
   "price":85
  },
   {
   "name":"Tomb rider",
   "picture":"img/Product/tomb.jpg",
   "old_price":17,
   "price":14
  }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/100*46,
      width: MediaQuery.of(context).size.width,
child: GridView.builder(
itemCount: productlist.length,
gridDelegate:new SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
) ,
itemBuilder:(BuildContext context, int index){
  return Template(
productname: productlist[index]['name'],
productpicture: productlist[index]['picture'],
productoldprice: productlist[index]['old_price'],
productprice: productlist[index]['price'],

  );
} ,
) 
    );
  }
}
class Template extends StatelessWidget {
  final productname;
  final productpicture;
  final productoldprice;
  final productprice;

  Template({this.productname,this.productoldprice,this.productpicture,this.productprice});
  

  @override
  Widget build(BuildContext context) {
    return Card(
     child: Hero
     (tag: productname,
     child: Material(
       child: InkWell(
onTap: () =>
 Navigator.of(context).push(
   new MaterialPageRoute(builder: (context) => new ProductDetails(
     //here we are passing the values of the main productss to the detail one
     productdetailname: productname,
     productdetailoldprice: productoldprice,
     productdetailpicture:productpicture ,
     productdetailprice: productprice,
   ))),


child: GridTile(footer:Container(
color: Colors.white70,
child: ListTile(
 dense: true,
  leading: Text(productname,style: TextStyle(fontWeight: FontWeight.bold),),
  title:Text("\$$productprice",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.redAccent),),
subtitle:Text("\$$productoldprice",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,decoration:TextDecoration.lineThrough ),),
),

), 
child: Image.asset(productpicture,fit: BoxFit.fill,),),
       ),

       ),

       ),

    );
  }
}