
import 'package:church_bells/picupload.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Function handler;
 // final String  icon;
  //final double height,width;

  CircularButton(this.handler);

  
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                width: 5.0,
                color: Colors.white
              ),
              
            ), 
    
    
       
         child: Center(
            child: GestureDetector(
          onTap: () {

            Navigator.push(context, 
    MaterialPageRoute(builder: (context) => ImageUpload())
                );
          },
          child: ClipOval(
            child: Container(
              
              color: Colors.blue,
              height: 60.0, // height of the button
              width: 60.0, // width of the button
              child: Center(child: Icon(Icons.arrow_forward)),
            ),
          ),
      )),
       
    );
  }
}