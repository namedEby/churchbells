
import 'package:church_bells/Screen_Size.dart';
import 'package:church_bells/leafbtn.dart';
import 'package:flutter/material.dart';
import './addbanner.dart';

class Homepage3 extends StatelessWidget
{
  final _names =[
    "ariyippukal",
    "thirukarmangal",
    "Ashamsakal",
    "Charamangal",
    "Baravahikal",
    "Prethana Numberukal",
    "Gallery",
    "Mall Bokking",
    
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), 
        child: AppBar(
          backgroundColor: Colors.white,
          
          automaticallyImplyLeading: false,
          
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: <Widget>[
             
              Container(
                
                
                padding: EdgeInsets.only(top: 60.0,),
                child: Text("Home",style: TextStyle(fontSize: 8.4*SizeConfig.imageSizeMultiplier,color: Colors.black),)),
                SizedBox(width: 30,),
                Container(
                  padding: EdgeInsets.only(top:60),
                  child: Icon(Icons.settings,
                  size: 8.4*SizeConfig.imageSizeMultiplier,),


                ),
                Container(
                  padding: EdgeInsets.only(top: 60),
                 child: Icon(Icons.notifications,
                  size:9.4*SizeConfig.imageSizeMultiplier,
                  color: Colors.black,
                  ),
                )
            ],
          ),
         
           shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(50.0)),
          ),
          
          
        
            ),
            ),
      body:
      Stack(
        children:<Widget>[
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: new DecorationImage(image: AssetImage('images/whitebg.jpg'),
          fit: BoxFit.cover
          )
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: 600,
              height: 750,
              
              child: GridView.count(
                padding: EdgeInsets.only(top: 3*SizeConfig.heightMultiplier),
                 childAspectRatio:1.29,
                  crossAxisCount: 2,
          children: List.generate(8, (index) {
            return Center(
              child: Leafbtn(btnname:_names[index],)
            );
          }),
        ),
               
            )
            
          ],
        ),

      ),
       Positioned(
              child: AppBanner(),
              bottom: 10.0,
              

            )
          

    ]
      ),
    );
  }
  
}