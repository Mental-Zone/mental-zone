import 'package:flutter/material.dart';
import 'package:mental_zone/shared/theme/font.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 80,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Logo
                Container(
                  width: 162,
                  height: 39,
                  margin: const EdgeInsets.only(
                    bottom: 73,
                  ),
                  // Replace with your logo widget
                  child: Image.asset('assets/img/menzologo.png'),
                ),
                //image
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/intropage3.png'),
                          alignment: Alignment.bottomCenter,
                          fit: BoxFit.fitWidth)),
                  margin: const EdgeInsets.only(
                    bottom: 50,
                  ),
                ),
                //headline
                Text(
                  "Convenient Online Counseling",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Color(0xFF1D1D1D),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  ),
                ),
                //descriotion
                Text(
                    'Reach out to a real expert, from the comfort of your phone',
                    textAlign: TextAlign.center,
                    style: headlineParagraph)
              ],
            ),
          ),
        ));
  }
}
