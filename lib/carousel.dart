import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Carusell extends StatelessWidget {
  @override
 
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/100*30,
      child: new Carousel(
boxFit: BoxFit.cover,
dotIncreasedColor: Colors.pink,


  images: [
new AssetImage("img/Carousel/4.jpg"),
new AssetImage("img/Carousel/1.jpg"),
new AssetImage("img/Carousel/2.jpg"),
new AssetImage("img/Carousel/3.jpg"),
new AssetImage("img/Carousel/5.jpg"),
new AssetImage("img/Carousel/6.jpg"),
new AssetImage("img/Carousel/7.jpg"),


    ],
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
   autoplayDuration: Duration(milliseconds: 5000),
indicatorBgPadding: 2.0,
      ),
    );
  }
}
