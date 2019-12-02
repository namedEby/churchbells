import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class ThirukarmangalSubContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return ThirukarmangalSubContentState();
  }
  
}

class ThirukarmangalSubContentState extends State<ThirukarmangalSubContent>{
   var date=DateTime.now();
  @override
  Widget build(BuildContext context) {
    
    return Container
    (
            child:Stack(
              children:<Widget>[
             Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  
                      
                      
                       Text("KARMAM 1",style: TextStyle(fontSize: 16.0)),
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
              top: 26,
              left:250 ,
            ),
              ]

      ),
      
    );
  }

}
  
