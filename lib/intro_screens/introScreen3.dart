import 'package:flutter/material.dart';
import 'MyButton.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg-8.png'),  // Replace with your image path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),  // Adjust the opacity for the tint
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Text(
                "KURO CAFE",
                style: TextStyle(fontSize: 28, color: Colors.white, fontFamily: 'JosefinSans', fontWeight: FontWeight.bold),
              ),
              Text(
                "The Coffee Shop You never expected",
                style: TextStyle(fontSize: 62, color: Color.fromARGB(255, 232, 187, 108), fontFamily: 'Bright', height: 0.80,),
              ),
              const SizedBox(
                height: 380,
              ),

              Text(
                "Kuro Cafe of the Philippines, one of the most popular cafes in Pampanga",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'JosefinSans',
                  fontSize: 20,
                  height: 1.2
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                text: "Get Started!", 
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
                backgroundColor: Color.fromARGB(255, 232, 187, 108),
                textColor: Color.fromARGB(255, 0, 0, 0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
