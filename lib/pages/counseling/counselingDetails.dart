// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:mental_zone/shared/theme/color.dart';

import '../../shared/theme/font.dart';

class CounselingDetails extends StatelessWidget {
  static const routeName = '/counseling/details';
  const CounselingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _navbar(context),
              const Gap(35),
              _doctorBanner(),
              _doctorLabel(),
              const Gap(27),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _icon('100+', 'Patients', IconlyBold.user_2),
                  _icon('5+', 'Years expert', IconlyBold.activity),
                  _icon('4.9', 'Rating', IconlyBold.star),
                  _icon('100+', 'Reviews', IconlyBold.chat),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }

  Row _icon(number, label, icon) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFF5F5FF)),
              child: Icon(
                icon,
                size: 18,
                color: primaryColor,
              ),
            ),
            const Gap(9),
            Text('$number',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            const Gap(3),
            Text('$label',
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Color(0xFF878787),
                    fontWeight: FontWeight.w400))
          ],
        )
      ],
    );
  }

  Container _doctorLabel() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                offset: Offset(0, 4))
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Frisk Senia, S.Psi',
                style: sectionHeader,
              ),
              Row(
                children: [
                  Icon(
                    IconlyBold.star,
                    color: Color(0xFFFFD33C),
                    size: 18,
                  ),
                  const Gap(8),
                  Text(
                    '4.9 (120 reviews)',
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          const Gap(4),
          Row(
            children: [
              Text(
                'Expertise: ',
                style: GoogleFonts.montserrat(
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Percintaan',
                style: GoogleFonts.montserrat(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }

  Stack _doctorBanner() {
    return Stack(alignment: Alignment.topRight, children: [
      ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          'assets/img/counseling/doktor_full.png',
          width: double.infinity,
          height: 210,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: Icon(
            IconlyBold.heart,
            color: primaryColor,
            size: 20,
          ),
        ),
      )
    ]);
  }

  Row _navbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/counseling');
            },
            child: Icon(Icons.arrow_back)),
        Text(
          'Counseling',
          style: sectionHeader,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: Colors.black.withOpacity(0.08), width: 0.4)),
        ),
      ],
    );
  }
}
