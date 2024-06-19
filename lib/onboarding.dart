import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import './intro_screens/introScreen1.dart';
import './intro_screens/introScreen3.dart';

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({Key? key}) : super(key: key);

  @override
  _onboardingScreenState createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            children: [IntroPage1(), IntroPage3()],
          ),
          Container(
              alignment: Alignment(0, 0.90),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SizedBox(
                    width: 20,
                  ),
           
                  SmoothPageIndicator(controller: _controller, count: 2, effect: SwapEffect(), ),
                  
                  onLastPage
                      ? Text(
                          (''),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text('next', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0), fontFamily: 'JosefinSans')),
                        ),
                ],
              ))
        ],
      ),
    );
  }
}
