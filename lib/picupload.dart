import 'package:flutter/material.dart';
import './circularbtn.dart';
import './home.dart';
import './Screen_Size.dart';

class ImageUpload extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return ImageUploadState();
  }

}

class ImageUploadState extends State<ImageUpload>{
  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return Scaffold(
      body: Container(
       // height: SizeConfig.heightMultiplier * 100,
        //width: SizeConfig.widthMultiplier * 100,
         decoration: BoxDecoration(
          image: new DecorationImage(image: AssetImage('images/blue.jpg'),
          fit: BoxFit.cover
          )
        ),

         padding: EdgeInsets.only(left:20.0,top:10.0,right: 20.0),
        child: Center(
            child: Container(
          
            height:90.7*SizeConfig.heightMultiplier,
       width:100*SizeConfig.widthMultiplier ,


          child: Card(
             shape:RoundedRectangleBorder (
               borderRadius: BorderRadius.circular(15.0),
             ),
              color: Colors.white,
              

            child: ClipRect(
                          child: Container(
                padding: EdgeInsets.only(top:30),
                child: Column(
                  children: <Widget>[
                    Text("Upload Photo",textAlign: TextAlign.center,style: TextStyle(fontSize: 30)),
                    SizedBox(height: 50,),
                    Stack(
                      children:<Widget>[
                     Container(
                       
                        width: 250,
                        height:250 ,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            
                           
                            border: Border.all(
                              
                              color: Colors.white,
                            ),
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image:  AssetImage('images/circletrial.jpg'),
                            ),
                        ),
                     ),
                     Positioned(
                   
                    
                     child: 
                     CircularButton(()=>ImageUpload),
                   
  top:2.0,
  left:150 ,

  
)
                      ],
                    ),
                    SizedBox(height: 30,),

                    Container(
                      width:240 ,
                      height: 50,
                      child: RaisedButton(
                        
                      
                        shape: RoundedRectangleBorder(
                               borderRadius: new BorderRadius.circular(25.0),
                              
                        ),  
                        color: Colors.blue,
                        child: Text("CONFIRM",textAlign: TextAlign.center,),
                        onPressed: (){
                           Navigator.push(context, 
                           MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                     Container(
                       
                      width:240 ,
                      height: 50,
                      child: RaisedButton(
                        
                        
                      
                        shape: RoundedRectangleBorder(
                               borderRadius: new BorderRadius.circular(25.0),
                               
                        ),  
                        color: Colors.grey,
                        child: Text("SKIP",textAlign: TextAlign.center,),
                        onPressed: (){},
                      ),
                    )
                  ]   
                     ),  
              
                ),
            ),
            ),
        ),
        ),
      )
      );
    
  }

}