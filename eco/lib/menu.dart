import 'package:eco/carrinho.dart';
import 'package:eco/jardim.dart';
import 'package:eco/main.dart';

import 'package:eco/perfil.dart';

import 'package:eco/home.dart';
import 'package:flutter/material.dart';








class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}



class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
 
static final List<Widget>_widgetOptions = [
Home(),
ShoppingCartPage(),
JardimScreen(),
PerfilScreen(),

];

void _onItemTapped(int index){
  setState(() {
    _selectedIndex= index;
  print('Tapped index is ${_selectedIndex}');
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    body: _widgetOptions[_selectedIndex],
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(245, 69, 230, 20),
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carrinho'),
      
         BottomNavigationBarItem(icon: Icon(Icons.sunny), label: 'Jardim'),
         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      
         
      ],
      ),
    );
  }
  }
  


















  
     