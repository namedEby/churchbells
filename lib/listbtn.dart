


import 'package:flutter/material.dart';


class Listbtn extends StatelessWidget {
  final Function handler;
 // final String  icon;
  //final double height,width;

  Listbtn(this.handler);

  
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                width: 1.0,
                color: Colors.white
              ),
              
            ), 
    
    
       
         child: Center(
            child: GestureDetector(
          onTap: () {

            Navigator.push(context, 
    MaterialPageRoute(builder: (context) => handler())
                );
          },
          child: ClipOval(
            child: Container(
              
              color: Colors.blue,
              height: 38.0, // height of the button
              width: 38.0, // width of the button
              child: Center(child: Icon(Icons.arrow_forward)),
            ),
          ),
      )),
       
    );
  }
}