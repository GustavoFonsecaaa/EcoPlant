
import 'package:eco/login.dart';

import 'package:flutter/material.dart';


class Recover2 extends StatefulWidget {
  const Recover2({Key? key}) : super(key: key);

  @override
  State<Recover2> createState() => _Recover2State();
}

class _Recover2State extends State<Recover2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(
              width: 400,
              height: 150,
              child: Image.asset("images/logo2.jpeg"),
            ),
         
          const Text(
            
            'A sua password foi alterada\n com sucesso!',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
          ),
                   SizedBox(
              height: 50,
            ),
           
                ElevatedButton(
                  onPressed: () {
                    {
Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Login()),
              
            );
                    }
                  },
                  child: Text(
                    
                    'Continue To Login',
                    
                  ),
                  style: ElevatedButton.styleFrom(
  backgroundColor: Color.fromARGB(244, 5, 202, 21),
  foregroundColor: Color.fromARGB(255, 255, 255, 255),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  minimumSize: Size(280, 50),
),

                ), 










              ]
            ),
          ),
        ),
      ),
    );
  }
}
