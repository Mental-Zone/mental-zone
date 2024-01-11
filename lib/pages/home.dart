// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 17),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF1D62FC),
                              image: DecorationImage(
                                  image: AssetImage('assets/img/ava.png'),
                                  alignment: Alignment.bottomCenter,
                                  fit: BoxFit.fitWidth)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello,',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              'Fernando',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.08),
                              width: 0.4)),
                      child: Icon(Icons.notifications),
                    ),
                  ],
                ),
                const Gap(37),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 15,
                              offset: Offset(0, 2))
                        ]),
                    child: Column(
                      children: [
                        Text(
                          'Bagaimana Perasaanmu hari ini?',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const Gap(18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.08),
                                        blurRadius: 15,
                                        offset: Offset(0, 2))
                                  ],
                                  border: Border.all(
                                      color: Color(0xFFCCF1F8), width: 1),
                                ),
                                child: IconButton(
                                  icon: Image.asset('assets/img/angy.png'),
                                  onPressed: () {},
                                )),
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.08),
                                        blurRadius: 15,
                                        offset: Offset(0, 2))
                                  ],
                                  border: Border.all(
                                      color: Color(0xFFCCF1F8), width: 1),
                                ),
                                child: IconButton(
                                  icon: Image.asset('assets/img/sad.png'),
                                  onPressed: () {},
                                )),
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.08),
                                        blurRadius: 15,
                                        offset: Offset(0, 2))
                                  ],
                                  border: Border.all(
                                      color: Color(0xFFCCF1F8), width: 1),
                                ),
                                child: IconButton(
                                  icon: Image.asset('assets/img/confused.png'),
                                  onPressed: () {},
                                )),
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.08),
                                        blurRadius: 15,
                                        offset: Offset(0, 2))
                                  ],
                                  border: Border.all(
                                      color: Color(0xFFCCF1F8), width: 1),
                                ),
                                child: IconButton(
                                  icon: Image.asset('assets/img/hepi.png'),
                                  onPressed: () {},
                                )),
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.08),
                                        blurRadius: 15,
                                        offset: Offset(0, 2))
                                  ],
                                  border: Border.all(
                                      color: Color(0xFFCCF1F8), width: 1),
                                ),
                                child: IconButton(
                                  icon: Image.asset('assets/img/lovely.png'),
                                  onPressed: () {},
                                )),
                          ],
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
