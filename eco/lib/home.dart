import 'package:eco/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Container(
  
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        
        color: Colors.white,
        child: ListView(
         
          children: <Widget>[
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
                hintText: "Pesquise um alimento",
                suffixIcon: const Icon(Icons.search),
                //prefix:Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
               SizedBox(
              height: 20,
            ),
              const Text(
            'Categoria',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
              SizedBox(
              height: 10,
            ),
            Container(
              
        padding: const EdgeInsets.fromLTRB(0,170, 0, 0),
        child: Image(
            image: AssetImage("images/vegetais.jpeg"),
          ),
            ),
               SizedBox(
              height: 10,
            ),
               Image(
            image: AssetImage("images/frutas.jpeg"),
            
            ),
           ],
          
            ),
            
            
          ),
        );
  }
}