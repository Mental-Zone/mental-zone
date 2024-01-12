// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_styles.dart';

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
                _profileRow(),
                const Gap(37),
                _moodRow(),
                const Gap(15),
                _menuRow()
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _menuRow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Apa yang kamu butuhkan?",
          style: GoogleFonts.montserrat(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        const Gap(12),
        Text("Menzo akan membantu menyelesaikan keluhmu",
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            )),
        const Gap(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Styles.primaryColor.withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 15,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/counseling.png'),
                      onPressed: () {},
                    )),
                const Gap(4),
                Text(
                  "Counseling",
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF605B57),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Styles.primaryColor.withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 15,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/menzai.png'),
                      onPressed: () {},
                    )),
                const Gap(4),
                Text(
                  "Menzai",
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF605B57),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Styles.primaryColor.withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 15,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/care.png'),
                      onPressed: () {},
                    )),
                const Gap(4),
                Text(
                  "Self Care",
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF605B57),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Styles.primaryColor.withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 15,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/book.png'),
                      onPressed: () {},
                    )),
                const Gap(4),
                Text(
                  "Journey",
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF605B57),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }

  Container _moodRow() {
    return Container(
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
                      border: Border.all(color: Color(0xFFCCF1F8), width: 1),
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
                      border: Border.all(color: Color(0xFFCCF1F8), width: 1),
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
                      border: Border.all(color: Color(0xFFCCF1F8), width: 1),
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
                      border: Border.all(color: Color(0xFFCCF1F8), width: 1),
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
                      border: Border.all(color: Color(0xFFCCF1F8), width: 1),
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/lovely.png'),
                      onPressed: () {},
                    )),
              ],
            )
          ],
        ));
  }

  Row _profileRow() {
    return Row(
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
                  color: Colors.black.withOpacity(0.08), width: 0.4)),
          child: Icon(Icons.notifications),
        ),
      ],
    );
  }
}
