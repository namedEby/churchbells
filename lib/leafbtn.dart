import 'package:church_bells/Screen_Size.dart';
import 'package:church_bells/thirukarmangal.dart';
import 'package:flutter/material.dart';


class Leafbtn extends StatelessWidget
{
  final String btnname;

  Leafbtn({this.btnname});
  @override

  Widget build(BuildContext context){
    //SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.all(10.0),
             height: SizeConfig.heightMultiplier* 25  ,
         width: SizeConfig.widthMultiplier* 48,
              //child:Expanded(
               child:RaisedButton(
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                color: Colors.black,
                onPressed: (){
                        Navigator.push(context, 
                                        MaterialPageRoute(builder: (context) => Thirukarmangal())
                );

                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(35.0),bottomLeft: Radius.circular(35.0))
                  
                ),
                child: Text(btnname,style: TextStyle(color: Colors.white,fontSize: 20),),
               
              )
            );
  }
}