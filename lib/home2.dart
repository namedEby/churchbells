import 'package:church_bells/Screen_Size.dart';

import 'package:church_bells/bg.dart';
import 'package:church_bells/listviewcontent.dart';
import 'package:flutter/material.dart';




class HomePage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return HomePage2State();
  }

}

class HomePage2State extends State<HomePage2>{
  
  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    
    return Scaffold(
      body:Stack(
        children:<Widget>[
          Background(),

      
         Positioned(   
         child: Stack(
          children: <Widget>[
            Container(
              
              
              height:121.75*SizeConfig.heightMultiplier ,
         width:114.2*SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          
          image: new DecorationImage(image: AssetImage('images/church.png'),
          fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
            ),
            
          ],
        ),
        top:MediaQuery.of(context).size.width/3.25,
        left:14,
        right:14,
        bottom: MediaQuery.of(context).size.width/10.15,
         
        
         ),
         
            Positioned(
             child: ListViewContent(),
             top: MediaQuery.of(context).size.width/3.35,
             left: 10.0,
             bottom:MediaQuery.of(context).size.width/10.79,
             right:10.0,
             
            ),
           
          
        
      ]
      )
      
    );
  }

}