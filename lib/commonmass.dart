import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommonMassDetails extends StatelessWidget {
  var date=DateTime.now();
  @override
  Widget build(BuildContext context) {
    
    return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20.0)
            ),
            child:Stack(
              children:<Widget>[
             Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                
              
                children: <Widget>[
                
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  
                      
                       Text("COMMON MASSES",style: TextStyle(fontSize: 16.0),),
                       SizedBox(height: 20.0,),
                       Text("KARMAM 1",style: TextStyle(fontSize: 16.0)),
                       Text("Lorem ipsum dolor sitadipi\n scing elit, sed do eiusmod t"),
                        SizedBox(height: 35.0,),
                       Text("KARMAM 2",style: TextStyle(fontSize: 16.0)),
                       Text("Lorem ipsum dolor sitadipi\n scing elit, sed do eiusmod t"),

                  ],
                  
          ),
            
                    
                  
                ],
              ),
            ),
           Positioned(

             child:Column(
               children:<Widget>[
             Text(DateFormat('dd/mm/yyyy').format(date),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 13),),
             Text("    6:00 Am",style: TextStyle(fontSize: 13,),textAlign: TextAlign.end,),
               ]
             ),
              top: 64,
              left:250 ,
            ),
             Positioned(

             child:Column(
               children:<Widget>[
             Text(DateFormat('dd/mm/yyyy').format(date),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 13),),
             Text("    6:00 Am",style: TextStyle(fontSize: 13,),textAlign: TextAlign.end,),
               ]
             ),
              top: 150,
              left:250 ,
            ),
             
      
              ]
    
            )
    
    );    
              
    
            
          
   
  }
  
}