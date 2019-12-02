import 'package:flutter/material.dart';
import './home3.dart';

class OptionBtn extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return Container(
                                padding: EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {

                          Navigator.push(context, 
                           MaterialPageRoute(builder: (context) => Homepage3())
                          );
                            //);
                            },
                              child: ClipOval(
            child: Container(
              padding: EdgeInsets.only(right: 3.0),
              
              color: Colors.blue,
              height: 40.0, // height of the button
              width: 40.0, // width of the button
              child: Center(child: Icon(Icons.arrow_forward)),
            ),
          ),
                            ),
                              
                             
                            
        
      );
  }
  
}