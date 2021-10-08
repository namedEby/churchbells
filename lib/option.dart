
import 'package:church_bells/Screen_Size.dart';
import 'package:church_bells/home2.dart';
import 'package:flutter/material.dart';

class Option extends StatelessWidget{
  final String optionname;
  
  Option({this.optionname});
  @override
  Widget build(BuildContext context) {
   // SizeConfig().init(context);
    
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
         height:10.5*SizeConfig.heightMultiplier,
         width: 43.75*SizeConfig.widthMultiplier,
      child:ButtonTheme(
        child: RaisedButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 5.0,
        color: Colors.blue,
        onPressed: (){
           Navigator.push(context, 
    MaterialPageRoute(builder: (context) => HomePage2())
                );

        },
        child: Text(optionname,style: TextStyle(fontSize: 19),),
      ) ,

      )
     
    
      
    );   
  }


}