import 'package:flutter/material.dart';
import 'package:kurocafe/intro_screens/MyButton.dart';

class ItemDetailsPage extends StatefulWidget {
  final String imagePath;
  final String itemName;
  final String itemPrice;
  final String itemRating;
  final Function addItemToCart;
  final String itemDescription;

    // Add this line

  ItemDetailsPage({
    required this.imagePath,
    required this.itemName,
    required this.itemPrice,
    required this.itemRating,
    required this.addItemToCart,
    required this.itemDescription  // Add this line
  });

  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void addToCart() {
    widget.addItemToCart(widget.itemName, widget.itemPrice, quantity);  // Modify this line

    showDialog(context: context,
    barrierDismissible: false,
     builder: (context) => AlertDialog(
      backgroundColor: Colors.black,

        content: Text('Item has been added to cart!', style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: "Bright"), textAlign: TextAlign.center,),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);

            Navigator.pop(context);

          }, icon: Icon(Icons.done_sharp, color: Colors.white,))
        ],
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = int.parse(widget.itemPrice) * quantity;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/coffees/gradient.png'),
            fit: BoxFit.cover
            )
        ),
        child: Column(
          
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  children: [
                    Image.asset(
                      widget.imagePath,
                      height: 250,
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.itemRating,
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.itemName,
                      style: TextStyle(fontSize: 45, fontFamily: "Bright"),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Color.fromARGB(255, 199, 148, 53),
                          fontWeight: FontWeight.bold, fontFamily: "JosefinSans",
                          fontSize: 20),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      widget.itemDescription,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 15, height: 2, fontFamily: "JosefinSans"),
                    ),
                  ],
                ),
              ),
            ),
        
            Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\₱" + totalPrice.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
        
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              onPressed: decrementQuantity,
                            ),
                          ),
        
                          SizedBox(
                            width: 40,
                            child: Center(
                              child: Text('$quantity', style: TextStyle(
                                color: Colors.white, 
                                fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
        
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: incrementQuantity,
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  MyButton(
                    text: "Add Order",
                    onTap: addToCart,
                    backgroundColor: Color.fromARGB(255, 182, 120, 33),
                    textColor: Colors.white,  // Modify this line
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
