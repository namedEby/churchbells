import 'package:church_bells/circularbtn.dart';
import 'package:church_bells/logincard.dart';
import 'package:church_bells/picupload.dart';
import 'package:flutter/material.dart';
import './Screen_Size.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
     theme: ThemeData(
       appBarTheme: AppBarTheme(
     color: Color.fromARGB(255, 255, 255, 255),
  )),
    
      home: SignUp(),
    );
  }
}



class SignUp extends StatefulWidget{
 
 
  @override
  State<StatefulWidget> createState() {
    
    return _SignUpState();
  }

}

class _SignUpState extends State<SignUp>{
   
  
   String pic ='ImageUpload';
   
  @override
  Widget build(BuildContext context) {
    
    
    return LayoutBuilder(
      builder:(context,constraints){
        return OrientationBuilder(
          builder: (context,orientation){
            SizeConfig().init(constraints, orientation);
             return MaterialApp(
              home:Scaffold(
                    body:Stack(      
                           children:<Widget>[
          
         Container(
          decoration: BoxDecoration(
          image: new DecorationImage(image: AssetImage('images/blue.jpg'),
          fit: BoxFit.cover
          )
        ),
         ),
        

        Container(
          padding: EdgeInsets.only(top: 20,),
          
          child: Center(
            child: Container(
              padding: EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 10),
                child: Stack(
                  children: <Widget>[
                    LoginCard(),
                  ],
                ),
            ),
          ),
        ),     
      Container(
        padding: EdgeInsets.only(top:11.1*SizeConfig.heightMultiplier,left: 40),
        child: Text('Enter Details',
        style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 20.0),
          fontSize:5.6*SizeConfig.textMultiplier),),),
         Positioned(
               child: Container(
                 //decoration: BorderRadius.circular(2),
                 child: 
                 CircularButton(()=>ImageUpload)
               ),  
  left: 40.7*SizeConfig.widthMultiplier,
  bottom: 10.7*SizeConfig.heightMultiplier,
                       )
        ]
      )
     )
             );
          }
          
        );
       
      }
      
    );
   
    
  }
}