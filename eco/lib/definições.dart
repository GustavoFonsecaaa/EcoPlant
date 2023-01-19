import 'package:flutter/material.dart';

class Definicoes extends StatelessWidget {
const Definicoes({Key? key }) : super(key: key);


@override
Widget build(BuildContext context){
return Scaffold(

 body: Container(
         
            child: Stack(
              children: [ 
                Container(
                  child: Row(
                    children: [
                      SizedBox(
      child: Container(
       
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.green,
                          size: 35.0,
                        ),
                        onPressed: () => Navigator.of(context).pop(true))),
                        
      ),
            Padding(
                  padding: const EdgeInsets.all(70),
                ),
SizedBox(
  
   child: Text(
   
    "Definições",
     style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
  ),
  
),


                    ],
                   
                  ), 
                 


                  
                ), 
              
                Container(
padding: EdgeInsets.only(left: 15, top: 100, right: 15),
child: GestureDetector(
onTap: (){
  FocusScope.of(context).unfocus();
},
child: ListView(
children: [
  Center(
child: Stack(
children: [
  Container(
   width: 130,
height: 130, 
decoration: BoxDecoration(
border: Border.all(width: 4, color: Colors.white),
boxShadow: [
  BoxShadow(
spreadRadius: 2,
blurRadius: 10,
color: Colors.black.withOpacity(0.1)
  ),
  ],
shape: BoxShape.circle,
  image: DecorationImage(
fit: BoxFit.cover,
image: AssetImage('images/woman.jpeg')
  ),

), 
  ),
Positioned(
bottom: 0,
right: 0,
child: Container(
height: 40,
width: 40,
decoration: BoxDecoration(
  shape: BoxShape.circle,
  border: Border.all(
width: 4,
  ),
color: Colors.blue
),
child: Icon(
Icons.edit,
color: Colors.white,
),
),
  ),

],

),

  ),


],


),
                ),
                ),        
     ],
                        
              
              
              ),
               
                ),
                

);
}
}


