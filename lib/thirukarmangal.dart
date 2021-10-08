import 'package:church_bells/Screen_Size.dart';
import 'package:church_bells/appbar.dart';
import 'package:church_bells/commonmass.dart';
import 'package:church_bells/thirukarmangalsub.dart';

import 'package:flutter/material.dart';



class Thirukarmangal extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
       ThemeData(
       
        primarySwatch: Colors.blue,
      );
    
    
    return ThirukarmangalState();
  }

}

class ThirukarmangalState extends State<Thirukarmangal>{
   var date=DateTime.now();
  final String classname="Thirukarmangal";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: MyCustomAppBar(text:classname),
      body:Stack(
        children:<Widget>[
          
      Container(
         width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: new DecorationImage(image: AssetImage('images/whitebg.jpg'),
          fit: BoxFit.cover
          )
        ),

      ),
      Positioned(
        child: Container(
          height: 225,
          width:380,
          padding:EdgeInsets.only(top:10.0,left: 10.0),
          child: CommonMassDetails(),
       
        ),
       top: 10,
       left: 10.0,
      ),
      
      
       Positioned(
                child: Center(
                  child: Container(
              
               height:50*SizeConfig.heightMultiplier,
                width:90.4*SizeConfig.widthMultiplier,
              child: ThirukarmangalSub()),
          ),
          top:250,
          left: 20.0,
          right: 30,

       ),
      
      
     
        ]  
      ), 	
    );
}

}