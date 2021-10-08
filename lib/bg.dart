import 'package:church_bells/Screen_Size.dart';
import 'package:flutter/material.dart';
import './Screen_Size.dart';

class Background extends StatelessWidget
{
 

  @override
  Widget build(BuildContext context) {
    
    
    return 
          Container(
        padding: EdgeInsets.only(
          top:60,
          bottom: 30,
          left:6.25*SizeConfig.widthMultiplier,
          right:6.25*SizeConfig.widthMultiplier),
        
         
        decoration: BoxDecoration(
          image: new DecorationImage(image: AssetImage('images/blue.jpg'),
          fit: BoxFit.cover
          )
        ),
        child:Column(
          children: <Widget>[
              Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              Icon(
                Icons.settings,
                size:8.4*SizeConfig.imageSizeMultiplier,

                color: Colors.white,
                ),
              
              SizedBox(width:21*SizeConfig.widthMultiplier),
              
              Text("HOME",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 5*SizeConfig.textMultiplier

                ),),
                SizedBox(width:22*SizeConfig.widthMultiplier),  
                Icon(Icons.notifications,
                size:9.4*SizeConfig.imageSizeMultiplier,
                color: Colors.white,)
            ],),],),);
  }}