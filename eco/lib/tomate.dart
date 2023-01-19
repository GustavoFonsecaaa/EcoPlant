
import 'package:eco/menu.dart';
import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:get/get.dart';


class Tomate extends StatefulWidget {
  const Tomate({Key? key}) : super(key: key);

  @override
  State<Tomate> createState() => _TomateState();
}
 int _itemCount = 0;
 
class _TomateState extends State<Tomate> {
  final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},
    {'name':'PORTUGUÊS','locale': Locale('pt','BR')},
    {'name':'SPANISH','locale': Locale('es','ES')},
  ];
  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }
@override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
backgroundColor: Color.fromARGB(236, 255, 51, 129),
body: SlidingUpPanel(
maxHeight: height,
minHeight: height / 1.6,  
 body: Container(
            height: height / 2,
            width: width,
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/toomate.jpeg'),
                  height: height / 2.5,
                  width: width,
  ), 
    Positioned(
                    top: 40.0,
                    left: 15.0,
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.green,
                          size: 35.0,
                        ),
                        onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => Menu()))))
              ],
              ), 
              // onPressed: () => Navigator.of(context).pop(true)))
                ),
                borderRadius: BorderRadius.circular(25.0),
                panel: Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0), //left, top, right, bottom
child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text('Alface'.tr, style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
            new Text(_itemCount.toString()),
            
            
            new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++))
            ],
           ),


     
           Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('Descrição'.tr, style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold,),)
],

           ),
             SizedBox(
            height: 5,
           ),
                      Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  
  Text('A alface é uma planta herbácea, com um'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
],
           ),
                                 Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  
  Text('caule diminuto ao qual se prendem as folhas.'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
],),
                                 Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  
  Text('Estas são a parte comestível da planta e'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
],),

                                 Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  
  Text('podem ser lisas ou crespas, fechando-se ou'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
],),

                                 Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  
  Text('não na forma de uma "cabeça". A coloração'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
],),

                                 Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  
  Text('das plantas pode variar do verde-amarelado'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
],),

                                 Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  
  Text('até o verde escuro e também pode ser roxa'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
],),
                                 Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  
  Text('dependendo da colheita.'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
],),











             SizedBox(
            height: 15,
           ),
                    Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('Plantação'.tr, style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold,),)
],

           ),
           SizedBox(
            height: 5,
           ),
                                Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('Plante as sementes com 1/8 a 1/4 de polegada'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),
                                           Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('de profundidade. As sementes de alface'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),
                                                     Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('precisam de luz para germinar, por isso não as'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),
                                                                Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('semeie muito fundo. As sementes podem ser'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),

                                                                Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('semeadas em fileiras únicas ou a lanço para'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),
                                                                           Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('plantio em fileiras largas (variedades de folhas'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),
                                                                       Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('soltas são as melhores para isso). Ao'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),
                                                                                  Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('transmitir, desbaste mudas de 1 a 2 polegadas'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),

                                                                                  Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('de altura para obter o espaçamento adequado.'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),




           SizedBox(
            height: 15,
           ),
                                           Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text('Preço Total'.tr,
  
   style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal,),)
                
],

           ),
           SizedBox(
            height: 5,
           ),
                                                       Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [ 
  Text(
                      '\$0.99',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,),),
                
],
        ),
           
  ],
  
),
                ),
                ),
                ),
      );
                
  }
  }
  