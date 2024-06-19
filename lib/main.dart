import 'package:flutter/material.dart';
import 'package:kurocafe/pages/menu_page.dart';
import 'onboarding.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboardingScreen(), // Assuming OnboardingScreen is the correct name
      routes: {
        '/onBoardingScreen': (context) =>  onboardingScreen(), // Route name corrected
        '/menupage': (context) =>  MenuPage(),
      
      },
    );
  }
}