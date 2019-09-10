import 'package:flutter/material.dart';



class Category extends StatelessWidget {
  final String  imageLocations;
  final String  imagecaptions;

 Category({this.imagecaptions,this.imageLocations});

 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: MediaQuery.of(context).size.width/100*26,
        height: MediaQuery.of(context).size.height/100*7,
              child: InkWell(onTap: (){},
        child: MaterialButton(
          onPressed: (){},
          child: Text("$imagecaptions",style: TextStyle(color: Colors.white),),
          color: Colors.red,

        )
        
         ,),
      ),
    );
  }
}

/*
child:ListTile(
          title: Image.asset(imageLocations),
          subtitle: Container(child: Text(imagecaptions,),alignment: Alignment.topCenter,),
         */