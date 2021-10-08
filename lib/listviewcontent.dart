import 'package:church_bells/Screen_Size.dart';
import 'package:church_bells/home3.dart';

import 'package:flutter/material.dart';
import './listbtn.dart';


class ListViewContent extends StatelessWidget{
  final options=[
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
    //SizeConfig().init(context);
    
    return Container(
              

              //height:,
              //width: SizeConfig.blockSizeHorizontal * 87,
              child: Card(
                 shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15.0),
                 ),
                
                color: Color.fromRGBO(255, 255, 255, 70.0),
            child:  ListView.builder(
      
               itemCount: options.length,
               itemBuilder: (context, index) {
               return Dismissible(
                 key: Key(options[index]),
            background: Container(
            alignment: AlignmentDirectional.centerEnd,
            
            
           ),
            child: Container(
              
                padding: EdgeInsets.only(left:(MediaQuery.of(context).size.width/20),),
             child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                 border: Border.all(color: Colors.black),
                 borderRadius: BorderRadius.all(Radius.circular(30.0)),
                 
                 
                 ),
                    height: 60,
                    child: Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       shape: new RoundedRectangleBorder(
                             borderRadius: new BorderRadius.circular(30.0)),
                    color:Color.fromRGBO(255, 255, 255, 70.0),
                      //elevation: 14.0,
                      child:Stack(
                        children:<Widget>[
                       Container(
                         
                        padding: EdgeInsets.only(left:10.0,right:10.0  ),
                        
                        
                        
                      height: 6.25*SizeConfig.heightMultiplier,
                      width:81*SizeConfig.widthMultiplier,
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                         Stack(
                         children: <Widget>[
                          Container(
                            
                            
                            height: 38,
                            
                           
                            
                            
                           // decoration: BoxDecoration(color: Colors.black),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                       child: Row(
                                         
                                         children: <Widget>[
                                           Container(
                                             
                                             padding: EdgeInsets.only(top: 12.0,left: 9.0),
                                      
                                     
                                      child: Text(options[index],textAlign: TextAlign.left,style: TextStyle(fontSize: 17,color: Colors.black),),

                                    ),
                                    
                               
                                    
                                       

                                         ],
                           
                                       ),
                                       
                                        
                       )]))),
                       
                      
                        ]
                        
                        ), ]
                       )
                       ),
                       
              Positioned(child: Listbtn(()=>Homepage3()),top:6.0,left:68.5*SizeConfig.widthMultiplier  ,),
             
                        ]
                      ),
                     
                       ),
                  ),
                     SizedBox(height: 10.0,)
                ],
              ),
            ),
            
               

               );
               }
         
              ),
              ),
              );

            
  }


}