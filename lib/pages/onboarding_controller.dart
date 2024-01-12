import 'package:flutter/material.dart';
import 'package:mental_zone/pages/onboarding_screen/intro_page1.dart';
import 'package:mental_zone/pages/onboarding_screen/intro_page2.dart';
import 'package:mental_zone/pages/onboarding_screen/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          // dot indicator
          Container(
            alignment: Alignment(0, 0.55),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 10,
                activeDotColor: Color(0xFF1D62FC),
                dotColor: Colors.grey,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 320,
              height: 50,
              margin: const EdgeInsets.only(
                bottom: 75,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: currentPage == 2 // Check if on IntroPage3
                        ? OutlinedButton(
                            onPressed: () {
                              // Handle Login button press
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Color(0xFFA5A5A5),
                                width: 1,
                              ),
                            ),
                          )
                        : OutlinedButton(
                            onPressed: () {
                              _controller.jumpToPage(2);
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Color(0xFFA5A5A5),
                                width: 1,
                              ),
                            ),
                          ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: currentPage == 2 // Check if on IntroPage3
                        ? ElevatedButton(
                            onPressed: () {
                              // Handle Register button press
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary: Color(0xFF1D62FC),
                            ),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              _controller.nextPage(
                                duration: Duration(milliseconds: 500), 
                                curve: Curves.easeIn
                                );
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary: Color(0xFF1D62FC),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
