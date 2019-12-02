import 'package:flutter/material.dart';
import './Screen_Size.dart';

class LoginCard extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    
    return LoginCardState();
  }
  
}

class LoginCardState extends State<LoginCard>
{
   var _parish =['parish1','parish2','parish3']; 
   var _currentItem;
   
  @override
  Widget build(BuildContext context) {
   
     //SizeConfig().init(context);
    
    return
    LayoutBuilder(
      builder:(context,constraints){
        return OrientationBuilder(
          builder: (context,orientation){
            SizeConfig().init(constraints, orientation);
             return Container(
       height:72*SizeConfig.heightMultiplier,
       width: 90*SizeConfig.widthMultiplier,

        child: Card(
                  shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15.0),
                 ),
                  color: Colors.white,
                  
                  child:Column(
                    children: <Widget>[
                      Container(
                        height: 60,
                        
                         decoration: BoxDecoration(
                                                   
                                                     border: Border(bottom: BorderSide(width:2.0,color: Colors.blue))
                    
                  ), 
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text('Signup',textAlign: TextAlign.center,style: TextStyle(fontSize: 22.0),)),
                      SizedBox(height:  3*SizeConfig.heightMultiplier),
                      Container(
                        width: 75*SizeConfig.widthMultiplier,
                        height: 8.5*SizeConfig.heightMultiplier,
                        child: Container(
                          
                          child: TextField(
                            textAlign: TextAlign.start,
                              
                              
                               decoration: new InputDecoration(
                              // icon: new Icon(icons.),
                               border: new OutlineInputBorder(
                               borderRadius: const BorderRadius.all(
                                            const Radius.circular(40.0),
                                         ),
                                         
                               ),
                              
                               hintText: 'ARCHIDOSE'
                               ),
                               
                           ),
                        ),
                      ),

                      SizedBox(height:10),
                       Container(
                         padding: EdgeInsets.only(top:5.0,left: 11.0),
                         width :75*SizeConfig.widthMultiplier,
                         height: 8.5*SizeConfig.heightMultiplier,
                          decoration: BoxDecoration(
                                                     borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                                     border: Border.all(
                                                                        
                                                                         width: 1.0,
                                                                         
                                                                           color: Colors.grey,
                                                                         ),
                    
                  ), 
                         
                         child: new DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                           
                            
                                isExpanded: true,
                               // value:selected,
                                
                                items: _parish.map((String dropDownStringItem){
                                  return DropdownMenuItem<String>(
                                    
                                     value: dropDownStringItem,
                                      child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                hint: new Text('Parish',textAlign: TextAlign.left,),
                                iconSize:40 ,
                                
                                
                              
                                onChanged: (String newValueSelected){
                                  setState(() {
                                    this._currentItem =newValueSelected;
                                    
                                    
                                  });
                                },
                               value:_currentItem
                              
                              
                          
                              ),
                         )
                       ),
                            SizedBox(height:10),

                            Container(
                        width: 75*SizeConfig.widthMultiplier,
                        height: 8.5*SizeConfig.heightMultiplier,
                        child: TextField(
                            
                             decoration: new InputDecoration(
                             border: new OutlineInputBorder(
                             borderRadius: const BorderRadius.all(
                                          const Radius.circular(40.0),
                                       ),
                             ),
                             hintText: 'Family Unit'
                             ),
                         ),
                      ),
                      SizedBox(height:10),
                      Container(
                        width: 75*SizeConfig.widthMultiplier,
                        height: 8.5*SizeConfig.heightMultiplier,
                        child: TextField(
                            
                             decoration: new InputDecoration(
                             border: new OutlineInputBorder(
                             borderRadius: const BorderRadius.all(
                                          const Radius.circular(40.0),
                                       ),
                             ),
                             hintText: 'Association'
                             ),
                         ),
                      ),
                      SizedBox(height:20.0),
                      Text('By pressing "submit" you agree to our',textAlign: TextAlign.center,),
                      Text('Terms & Conditions',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),),
                      ],
                          ),
                ),
             );
          }
        
        
        );
    
    
}
    );
    }
  }
  