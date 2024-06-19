import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;
  final String coffeeRating;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
    required this.coffeeRating
    });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 30),
      child: Container(
          padding: EdgeInsets.all(30),
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage('images/coffees/gradient.png'),
            fit: BoxFit.cover
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                
                child: Align(alignment: Alignment.center, child: Image.asset(coffeeImagePath, height: 180,)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 9.0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: TextStyle(fontSize: 30, color: Colors.black, fontFamily: 'Bright'),
                    ),
                    SizedBox(
                      height: 2,
                    ),

                  ],
                ),
              ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\₱' + coffeePrice, style: 
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  ,),

                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color.fromARGB(255, 252, 239, 0),
                      ),
                      Text(
                        coffeeRating,
                        style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
                      )
                    ],
                  )
                  
                  
                ],
              )
            )




            ],
          )),
    );
  }
}
