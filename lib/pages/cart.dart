import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kurocafe/intro_screens/MyButton.dart';

class CartPage extends StatefulWidget {
  final Function removeItemFromCart;
  final List<Map<String, dynamic>> cartItems;

  CartPage({required this.removeItemFromCart, required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(int index) {
    setState(() {
      widget.removeItemFromCart(index);
    });
  }

  double getTotalAmount() {
    double total = 0;
    for (var item in widget.cartItems) {
      total += double.parse(item['price']) * item['quantity'];
    }
    return total;
  }

  void checkingOut() {
    // Generate a random order number
    int orderNumber = Random().nextInt(1000);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black,
        content: Column(
          
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 40),
            Text(
              'Payment will be at the counter',
              style: TextStyle(color: Colors.white, 
              fontSize: 25, fontFamily: "Bright"),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
            'Total Amount: \₱${getTotalAmount().toStringAsFixed(2)}',
            style: TextStyle(color: Color.fromARGB(255, 235, 190, 132), fontSize: 20, fontFamily: "JosefinSans", fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            
            ),
            SizedBox(height: 20),
            Text(
              'This is your order number: ',
              style: TextStyle(color: Colors.white , fontSize: 20, fontFamily: "JosefinSans"),
              textAlign: TextAlign.center,
            ),
            Text('$orderNumber' , style: TextStyle(color: Color.fromARGB(255, 235, 190, 132), fontSize: 35, fontFamily: "JosefinSans", fontWeight: FontWeight.w700),)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
              Navigator.pop(context); // Close the cart page

              // Clear the cart items
              widget.cartItems.clear();
            },
            icon: Icon(Icons.done_sharp, color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY CART', style: TextStyle(fontFamily: "Bright", fontSize: 40, color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 187, 120, 58),
        elevation: 0,
      ),
      body: widget.cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/logo.png', // Replace with your logo path
                    height: 300,
                  ),
                  Text(
                    'You don\'t have items in your basket',
                    style: TextStyle(fontFamily: "JosefinSans",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.cartItems.length,
                    itemBuilder: (context, index) {
                      final item = widget.cartItems[index];
                      return Dismissible(
                        key: UniqueKey(),
                        onDismissed: (direction) {
                          removeFromCart(index);
                        },
                        background: Container(
                          color: Color.fromARGB(255, 236, 172, 46),
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 30,
                          ),
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 20),
                        ),
                        direction: DismissDirection.endToStart,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          margin: const EdgeInsets.only(
                              left: 20, top: 20, right: 20),
                          child: ListTile(
                            title: Text(

                              item['name'],
                              style: TextStyle(
                                  fontSize: 25, color: Colors.white, fontFamily: "Bright"),
                            ),

                            subtitle: Text(
                              '\₱${item['price']}',
                              style: TextStyle(
                                  fontSize: 15, color: Color.fromARGB(255, 248, 204, 122), fontWeight: FontWeight.normal, fontFamily: "JosefinSans"),
                            ),

                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                Text('${item['quantity']}', style: TextStyle(
                                  fontSize: 20, color: const Color.fromARGB(255, 255, 255, 255)
                                ),),

                                IconButton(
                                  icon: Icon(Icons.delete),
                                  color: Color.fromARGB(255, 236, 172, 46),
                                  onPressed: () {
                                    removeFromCart(index);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Total Amount: \₱${getTotalAmount().toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontSize: 18,fontFamily: "JosefinSans",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                                  textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      MyButton(
                        text: 'Checkout',
                        onTap: checkingOut,
                        backgroundColor: Color.fromARGB(255, 236, 172, 46),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}