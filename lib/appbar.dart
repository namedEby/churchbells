import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height =100;
  final String text;

  const MyCustomAppBar({
    Key key,
    
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(100.0), 
        child: AppBar(
          backgroundColor: Colors.blue,
          
          automaticallyImplyLeading: false,
          
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 60.0),
                  child: Icon(Icons.arrow_back,
                  size:40,
                  color:Colors.white),
              ),
              Container(
                
                
                padding: EdgeInsets.only(top: 60.0,left:10.0),
                child: Text(text,style: TextStyle(fontSize: 30,color: Colors.white),)),
                SizedBox(width: 30,),
                Container(
                  padding: EdgeInsets.only(top: 60),
                 child: Icon(Icons.notifications,
                  size: 40.0,
                  color: Colors.white,
                  ),
                )
            ],
          ),
         
           shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(50.0)),
          ),
          
       
               
            ),
            ),
         
            
            
          
        
        
       
        
      );
    
  }
  
 @override
  Size get preferredSize => Size.fromHeight(height);
}