import 'dart:async';
import 'package:eco/login.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';



class Splash  extends StatefulWidget {
  @override
  _SplashState createState() =>  _SplashState();
}

class  _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3),(){
Navigator.push(context,MaterialPageRoute(
builder: (context)=>Login(),
));
    });
  }
@override

Widget build(BuildContext context) {
 return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 400,
              height: 400,
              
              child: Image.asset("images/splash.jpeg"),
            ),
            
            Padding(
            padding: const EdgeInsets.all(8),
            
          ),
           SizedBox(
              height: 110,
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
Text('Loading...',
style: TextStyle(
fontSize: 15,
fontWeight: FontWeight.bold,

),
),
              ],

              
            ),

            ),]
        ),
        
      ),
 );
}
}