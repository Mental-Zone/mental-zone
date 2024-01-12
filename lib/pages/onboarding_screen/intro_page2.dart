import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
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
                      image: AssetImage('assets/img/intropage2.png'),
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.fitWidth)),
                margin: const EdgeInsets.only(
                  bottom: 50,
                ),
              ),
              //headline
              Text(
                "Teman AI Penuh Wawasan",
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
                'Ceritakan keluhmu dengan teman AI yang cerdas dan penuh wawasan',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF5F6164),
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                ),
            )
            ],
          ),
        ),
      )
    );
  }
}
