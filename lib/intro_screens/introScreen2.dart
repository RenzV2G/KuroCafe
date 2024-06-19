import 'package:flutter/material.dart';
import 'dart:ui';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg-13.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRect(
              // ClipRect to clip the blur effect
              child: BackdropFilter(
                filter:
                    ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Apply blur effect
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
            child: Container(
              width: 60, // Set a fixed width for the container
              height: 60, // Set a fixed height for the container
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(
                      context); // Navigate back to the previous screen
                },
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image(
                      image: AssetImage('images/logo.png'),
                      color: Colors.white,
                      height: 300,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.95, // Set width to 80% of screen width
                    child: Card(
                      color: Color.fromARGB(255, 89, 89, 89).withOpacity(0.8),
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Kuro Cafe, where every sip tells a story and every bite is a delight. Step into our cozy haven, where aromatic brews blend with a tranquil ambiance, inviting you to indulge in moments of relaxation and indulgence. Join us as we craft unforgettable experiences, one cup at a time.",
                               textAlign: TextAlign.justify, style: TextStyle(
                                color: Colors.white, 
                                fontFamily: 'JosefinSans',
                                fontSize: 18,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.alarm,
                                  size: 30,
                                  color: Color.fromARGB(255, 236, 172, 46),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "8:00am to 12:00am",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'JosefinSans'),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Color.fromARGB(255, 236, 172, 46),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "+63 966-619-3609",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'JosefinSans'),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 30,
                                  color: Color.fromARGB(255, 236, 172, 46),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Monday to Saturday",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'JosefinSans'),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  size: 30,
                                  color: Color.fromARGB(255, 236, 172, 46),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Angeles City, Pampanga",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'JosefinSans'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height:
                          50), // Add some space at the bottom for better scrolling
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
