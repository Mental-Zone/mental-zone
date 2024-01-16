// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:mental_zone/shared/theme/color.dart';

import '../../shared/theme/font.dart';

class AppointmentPage extends StatefulWidget {
  static const routeName = '/counseling/appointment';
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.transparent),
                height: 240,
                child: Image.asset(
                  'assets/img/counseling/doktor_full.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.5),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(25),
                    _navbar(context),
                    const Gap(50),
                    _doctorCard(),
                    const Gap(37),
                    Text(
                      "Customize your schedule",
                      style: sectionHeader,
                    ),
                    const Gap(5),
                    Text(
                      "Choose a date and time for consultation",
                      style: paragraph,
                    ),
                    const Gap(24),
                    Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Choose a date', style: paragraph),
                              Text("January 2024 > ",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: primaryColor))
                            ]),
                        const Gap(10)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _doctorCard() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, 5)),
            ],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: primaryColor.withOpacity(0.15), width: 3)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/img/counseling/doktor_full.png',
                        width: 72,
                        height: 72,
                        fit: BoxFit.cover,
                      )),
                ),
                const Gap(15),
                Flexible(
                  fit: FlexFit.loose,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Friska Senia, S.Psi',
                                style: sectionHeader,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text('Expertise : ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500)),
                              const Gap(5),
                              Text(
                                'Love',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.08),
                                  width: 0.4),
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            IconlyBold.heart,
                            color: primaryColor,
                            size: 20,
                          ))
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.black.withOpacity(0.08),
              thickness: 0.4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoColumn("40 Minutes", "Duration",
                    IconlyLight.time_circle, Colors.red),
                _buildInfoColumn(
                    "1 x", "Session", IconlyLight.user, Colors.orange),
                _buildInfoColumn(
                    "50.000", "Harga", IconlyLight.wallet, Colors.green)
              ],
            ),
          ],
        ));
  }

  Row _navbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/counseling');
            },
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: Colors.black.withOpacity(0.08), width: 0.4)),
                child: Icon(Icons.arrow_back))),
        Text(
          'Counseling',
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
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

Widget _buildInfoColumn(
    String text, String label, IconData icon, Color iconColor) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: iconColor.withOpacity(0.3)),
            child: Icon(
              icon,
              color: iconColor,
              size: 12,
            ),
          ),
          const Gap(8),
          Text(
            text,
            style: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ],
      ),
      Text(
        label,
        style: paragraph,
      )
    ],
  );
}
