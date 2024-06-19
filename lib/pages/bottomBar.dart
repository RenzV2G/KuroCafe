import 'package:flutter/material.dart';
import 'package:kurocafe/intro_screens/introScreen2.dart';
import 'package:kurocafe/intro_screens/introScreen3.dart';
import 'package:kurocafe/pages/cart.dart'; // Make sure to import CartPage

class BottomBar extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;
  final Function(int index) removeItemFromCart;
  final Function(String name, String price, int quantity) addItemToCart;

  BottomBar({
    required this.cartItems,
    required this.removeItemFromCart,
    required this.addItemToCart,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.shopping_basket_outlined),
            iconSize: 30,
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(
                    cartItems: cartItems,
                    removeItemFromCart: removeItemFromCart,
                  ),
                ),
              );

              if (result != null) {
                addItemToCart(
                    result['name'], result['price'], result['quantity']);
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.home),iconSize: 30,
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntroPage3())
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.info_outlined), iconSize: 30,
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IntroPage2(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
