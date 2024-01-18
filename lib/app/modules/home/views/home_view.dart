import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:menzo/app/controllers/auth_controller.dart';
import 'package:menzo/app/routes/app_pages.dart';
import 'package:menzo/app/shared/theme/color.dart';
import 'package:menzo/app/shared/theme/font.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _profileRow(),
                const Gap(37),
                _moodRow(),
                const Gap(21),
                _menuRow(context),
                const Gap(21),
                _meditateRow()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.montserrat(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
          unselectedLabelStyle: GoogleFonts.montserrat(
              fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.paper), label: 'Article'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.time_circle), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.profile), label: 'Profile'),
          ]),
    );
  }

  Column _meditateRow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Lets start your meditation!", style: sectionHeader),
        const Gap(10),
        Text("Make your day calmer and more peaceful", style: paragraph),
        const Gap(12),
        Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(16)),
          child: Row(children: [
            Image.asset(
              'assets/img/home/sleep.png',
              width: 56,
              height: 56,
            ),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Deep Sleep',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      '• 3 session',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  'Get quality rest',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
            const Gap(48),
            Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    color: Color(0xFF417CFF),
                    borderRadius: BorderRadius.circular(12)),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 20,
                )),
          ]),
        )
      ],
    );
  }

  Column _menuRow(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("What do you need?", style: sectionHeader),
        const Gap(10),
        Text("Menzo will help resolve your problems", style: paragraph),
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
                      color: primaryColor.withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 15,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: IconButton(
                        icon: Image.asset('assets/img/home/counseling.png'),
                        onPressed: () => Get.offAllNamed(Routes.COUNSELING))),
                const Gap(4),
                Text(
                  "Counseling",
                  style: label,
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
                      color: primaryColor.withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 15,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/home/menzai.png'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/menzai');
                      },
                    )),
                const Gap(4),
                Text(
                  "Menzai",
                  style: label,
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
                      color: primaryColor.withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 15,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/home/care.png'),
                      onPressed: () {},
                    )),
                const Gap(4),
                Text(
                  "Self Care",
                  style: label,
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
                      color: primaryColor.withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 15,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/home/book.png'),
                      onPressed: () {},
                    )),
                const Gap(4),
                Text(
                  "Journey",
                  style: label,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                'How are you feeling today?',
                style: sectionHeader,
              ),
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
                      border: Border.all(
                          color: primaryColor.withOpacity(0.5), width: 1),
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/home/angy.png'),
                      onPressed: () {},
                    )),
                Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: primaryColor.withOpacity(0.5), width: 1),
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/home/sad.png'),
                      onPressed: () {},
                    )),
                Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: primaryColor.withOpacity(0.5), width: 1),
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/home/confused.png'),
                      onPressed: () {},
                    )),
                Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: primaryColor.withOpacity(0.5), width: 1),
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/home/hepi.png'),
                      onPressed: () {},
                    )),
                Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: primaryColor.withOpacity(0.5), width: 1),
                    ),
                    child: IconButton(
                      icon: Image.asset('assets/img/home/lovely.png'),
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
                      image: AssetImage('assets/img/home/ava2.png'),
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.scaleDown)),
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
