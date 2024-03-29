// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_zone/pages/onboarding_screen/intro_page1.dart';
import 'package:mental_zone/pages/onboarding_screen/intro_page2.dart';
import 'package:mental_zone/pages/onboarding_screen/intro_page3.dart';
import 'package:mental_zone/shared/theme/font.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  static const routeName = '/';
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
                              Navigator.pushNamed(context, '/Register');
                            },
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Color(0xFFA5A5A5),
                                width: 1,
                              ),
                            ),
                            child: Text('Register', style: sectionHeader),
                          )
                        : OutlinedButton(
                            onPressed: () {
                              _controller.jumpToPage(2);
                            },
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Color(0xFFA5A5A5),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'Skip',
                              style: sectionHeader,
                            ),
                          ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: currentPage == 2 // Check if on IntroPage3
                        ? ElevatedButton(
                            onPressed: () {
                              // Handle Register button press
                              Navigator.pushNamed(context, '/Login');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary: Color(0xFF1D62FC),
                            ),
                            child: Text(
                              'Login',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary: Color(0xFF1D62FC),
                            ),
                            child: Text(
                              'Next',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
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
