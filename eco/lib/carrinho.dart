import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  // List to hold the items in the cart
  List<CartItem> _items = [];
  
    double _calculateTotalPrice() {
    double totalPrice = 0;
    for (CartItem item in _items) {
      totalPrice += item.quantity * item.price;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Shopping Cart'),
               actions: [
          Text('Total: \€${_calculateTotalPrice().toStringAsFixed(2)}'),
        ],
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(_items[index].image),
            title: Text(_items[index].name),



            trailing: Row(
              
  mainAxisSize: MainAxisSize.min,

              
              children: <Widget>[

                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      _items.removeAt(index);
                       _calculateTotalPrice();

                    });
                  },
                ),
                
                Text(_items[index].quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      _items[index].quantity++;
                       _calculateTotalPrice();

                    });
                  },
                ),
                                              Text('\€${_items[index].price.toStringAsFixed(2)}'),




                    
              ],
            ),
            
          ); 

        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
   
      ),
    );
        
  }


 void _addItem() {
    setState(() {
     
      _items.add(CartItem(
        name: 'Alface',
        image: 'images/alface.jpeg',
        quantity: 1,
                price: 1.98

      ));
    });
       setState(() {
      _items.add(CartItem(
        name: 'Cenoura',
        image: 'images/cenoura.jpeg',
        quantity: 1,
        price: 0.99
      ));
    });
      setState(() {
      _items.add(CartItem(
        name: 'Tomate',
        image: 'images/tomate.jpeg',
        quantity: 1,
         price: 1.99
      ));
    });
    
    double _calculateTotalPrice() {
    double totalPrice = 0;
    for (CartItem item in _items) {
      totalPrice += item.quantity * item.price;
    }
    return totalPrice;
  }

  }
}

class CartItem {
  String name;
  String image;
  int quantity;
  double price;

  CartItem({required this.name, required this.image, required this.quantity, required this.price});
}

