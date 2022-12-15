
import 'dart:io';
import 'package:eco/signup.dart';
import 'package:eco/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("images/logo.jpeg"),
            ),
           
            Padding(
            padding: const EdgeInsets.all(8),
          ),
          const Text(
            'Sign Up',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
            SizedBox(
              height: 20,
            ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                    ),
                      label: Text('email'), 
                   prefixIcon: Icon(Icons.email, color: Colors.black,),
                      hintText: 'nome@email.com',
                      
                      ),
                      validator: (email){
                        if(email == null || email.isEmpty){
                          return 'Digite o seu email!';
                        }
                        return null;
                      },
                      
                ),
                  SizedBox(
              height: 20,
            ),
                TextFormField(
                  controller: _senhaController,
                  autofocus: true,
                  obscureText: _showPassword == false ? true : false,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                      label: Text('password'), hintText: 'Digite a sua senha',
                      hintStyle: TextStyle(color: Colors.grey,),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),

                      ),
                      suffixIcon: GestureDetector(
                        child: Icon(_showPassword == false ? Icons.visibility_off : Icons.visibility, color: Colors.grey,),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                      ),
                        validator: (senha){
                        if(senha == null || senha.isEmpty){
                          return 'Digite a sua senha!';
                        }else if(senha.length < 6){
                        return 'Digite uma senha mais forte!';

                        }
                        return null;
                      },
                ),
                  SizedBox(
              height: 20,
            ),
                Container(
                
child: TextField(
keyboardType: TextInputType.number,
inputFormatters: <TextInputFormatter>[
  FilteringTextInputFormatter.digitsOnly
],
 decoration: InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                    ),
                   prefixIcon: Icon(Icons.phone, color: Colors.black,),
                    label: Text('Phone Number'), hintText: 'Digite o seu número!',
                      hintStyle: TextStyle(color: Colors.grey,),
                      

),
),

                ),
                  SizedBox(
              height: 20,
            ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Login()),
              
            );
                    }
                  },
                  child: Text(
                    
                    'Sign Up',
                    
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
