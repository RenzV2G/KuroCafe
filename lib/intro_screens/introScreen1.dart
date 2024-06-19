import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 240, 236, 228),  // Change the background color here
        child: Center(
          child: Image.asset(
            "images/logo.png",
            height: 250,
            fit: BoxFit.contain,  // Adjust the fit based on your image size
          ),
        ),
      ),
    );
  }
}
