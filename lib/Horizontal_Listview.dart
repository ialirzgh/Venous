import 'package:firstapp/Categories.dart';
import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/100*4,
      width: MediaQuery.of(context).size.width,
child: ListView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Padding(padding: EdgeInsets.only(left: 5.0),),
Category(
  imagecaptions: 'Estrategic',
),
Category(
  
  imagecaptions: 'Action',
),
Category(
 
  imagecaptions: 'Shooting',
),
Category(
  
  imagecaptions: 'Simulation',
),
Category(
 
  imagecaptions: 'Racing',
),
Category(
  
  imagecaptions: 'Sport',
),
  ],
)
      

    );
   
  
  }
}