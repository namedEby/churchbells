import 'package:flutter/material.dart';

class AppBanner extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    
    return AppBannerState();

  }
  
}

class AppBannerState extends State<AppBanner>
{
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width:418,
      height: 120.0,
      child: Card(
        color: Colors.black,
        child: Row(
          children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            height: 100.0,
            child: Image.asset('images/circletrial.jpg')
            ),
            

          ],
        ),

      ),
    );
  }
  
}