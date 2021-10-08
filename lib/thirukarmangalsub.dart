import 'package:church_bells/thirukarmangalsubcontent.dart';
import 'package:flutter/material.dart';
import './Screen_Size.dart';

class ThirukarmangalSub extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return ThirukarmangalSubState();
  }
  
}

class ThirukarmangalSubState extends State<ThirukarmangalSub> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Card(
         shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20.0)
            ),

        child: GridView.count(
                padding: EdgeInsets.only(top: 3*SizeConfig.heightMultiplier),
                 childAspectRatio:4,
                  crossAxisCount: 1,
          children: List.generate(8, (index) {
            return Center(
              child:ThirukarmangalSubContent()
            );
          }),
        ),

      ),
    );
  }
  
}