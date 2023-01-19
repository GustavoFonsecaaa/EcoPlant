
import 'package:eco/alface.dart';

import 'package:eco/theme_service.dart';
import 'package:eco/tomate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';






class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {
   final TextEditingController _searchController = TextEditingController();
  final List<String> _searchHistory = [];
   final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},
    {'name':'PORTUGUESE','locale': Locale('pt','BR')},
    {'name':'SPANISH','locale': Locale('es','ES')},
  ];
  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    const moonIcon = CupertinoIcons.moon_stars;
    return Scaffold(
 body: SafeArea(
    child: ListView(
      
         padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          children: <Widget>[
            IconButton(
              icon: const Icon(
                moonIcon,
                color: Colors.grey,
              ), onPressed: () { 
                ThemeService().changeTheme();
               },
            ),
            SizedBox(
              width: 200,
              height: 200,
              
              child: Image.asset("images/TomateWeek.jpeg"),
              
            ),
          
             
         


            TextField(
              //onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding: 
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Pesquise um alimento".tr,
                suffixIcon: const Icon(Icons.search),
                //prefix:Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(),
                  
                ),
                
              ),
            ),
          
               SizedBox(
              height: 20,
            ),
          
              SizedBox(
              height: 15,
            ),
    
               SizedBox(
              height: 15,
            ), Text(
            'Os Nossos Produtos'.tr,
            style: TextStyle(
                fontSize: 20,  fontWeight: FontWeight.bold
                ),   
          ),
             SizedBox(
              height: 20,
            ),
            Container(
              child: Row(children: [
                Row(
                 
                   children: [
               
                Image.asset('images/tomate.jpeg',
                 height: 80,
                  width: 120,
                  ),
              
              ],
                ),
/* InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Recover()));
                  },
                  child: Text(
                    "Esqueceu a Palavra-Passe?".tr,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ), */
                
               Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(

                    
                   child: Text(
                      'Tomate Cherry Semente'.tr),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => Tomate()));
                      }
                    ),
                      SizedBox(
              height: 13,
            ),
                     Text(
                      '\€1.99',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],

                )
               )
              ],
              ),
            ),
             SizedBox(
              height: 15,
            ),
             Container(
              child: Row(children: [
                Row(
                 
                   children: [
                
                Image.asset('images/alface.jpeg',
                 height: 80,
                  width: 120,
                  ),
              
              ],
                ),
               Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                    GestureDetector(
                   child: Text(
                      'Alface (Tipo) Semente'.tr),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => Alface()));
                      }
                    ),
                      SizedBox(
              height: 13,
            ),
                     Text(
                      '\€0.99',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],

                )
               )
              ],
              ),
            ),
                SizedBox(
              height: 15,
            ),
             Container(
              child: Row(children: [
                Row(
                 
                   children: [
               
                Image.asset('images/cenoura.jpeg',
                 height: 80,
                  width: 120,
                  ),
              
              ],
                ),
               Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                    GestureDetector(
                   child: Text(
                      'Cenoura (Tipo) Semente'.tr),
                      onTap: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => Cenoura()));
                      }
                    ),
                      SizedBox(
              height: 13,
            ),
                     Text(
                      '\€1.20',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],

                )
               )
              ],
              ),
            ),
              
             SizedBox(
              height: 15,
            ),
             Container(
              child: Row(children: [
                Row(
                 
                   children: [
               
                Image.asset('images/alface.jpeg',
                 height: 80,
                  width: 120,
                  ),
              
              ],
                ),
               Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                    GestureDetector(
                   child: Text(
                      'Alface (Tipo) Semente'.tr),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => Alface()));
                      }
                    ),
                      SizedBox(
              height: 13,
            ),
                     Text(
                      '\€0.99',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],

                )
               )
              ],
              ),
            ),
                SizedBox(
              height: 15,
            ),
             Container(
              child: Row(children: [
                Row(
                 
                   children: [
               
                Image.asset('images/cenoura.jpeg',
                 height: 80,
                  width: 120,
                  ),
              
              ],
                ),
               Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    GestureDetector(
                   child: Text(
                      'Cenoura (Tipo) Semente'.tr),
                      onTap: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => Cenoura()));
                      }
                    ),
                      SizedBox(
              height: 13,
            ),
                     Text(
                      '\€1.20',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],

                )
               )
              ],
              ),
            ),
              
              
            
            
           ],
          
            ),
            
            
          ),
      );
  }
}