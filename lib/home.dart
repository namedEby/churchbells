
//import 'package:church_bells/home2.dart';
import 'package:church_bells/bg.dart';
import 'package:flutter/material.dart';
import './option.dart';

import './Screen_Size.dart';





class HomePage extends StatelessWidget {
  
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
      body: Stack(
        children:<Widget>[
          Background(),
     
          Positioned( 
      
               child:Container(
            
         height: 142.5*SizeConfig.heightMultiplier,
         width:114.2*SizeConfig.widthMultiplier,
               decoration: BoxDecoration(
          
               image: new DecorationImage(image: AssetImage('images/church.png'),
               fit: BoxFit.cover
               ),
                 borderRadius: BorderRadius.all(Radius.circular(40.0))
                 ),
            ),
            top: MediaQuery.of(context).size.width/3.75,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).size.width/30.75,
            
              
          ),
          Positioned(
          child: Container(
            decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(60.0))
            ),
             height: 130.5*SizeConfig.heightMultiplier,
             width: 114.2*SizeConfig.widthMultiplier,
            

            child:Stack(
              children:<Widget>[
             Container(
               height: double.infinity,
               child: Card( 
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(40.0),
                   ),
                     color: Color.fromRGBO(255, 255, 255, 39),
                     child: Container(
                       padding: EdgeInsets.only(top: 20.0),
                      child: GridView.count(
                
          crossAxisCount: 2,
          childAspectRatio: 1.9,
 
           padding: const EdgeInsets.only(top:35.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 6.0,
          children: List.generate(8, (index) {
            return Center(
              child: Option(optionname:_names[index] ,)
            );
          }),
        ),
                      
                     ),
                    // child: Text("fsagaddgsdgdvdvvsdvdvdvdvvsdz"),

                   ),
             ),
                 
              ]
            ),   
                
          ),
          top: 105,
          left: 5,
          right: 5,
          bottom: 10,


          
          
          ),
           
          
        
          
         

       
        ]
          
          
        ),

      
    );
  }

}