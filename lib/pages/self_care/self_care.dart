import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import '../../shared/theme/color.dart';
import '../../shared/theme/font.dart';

class selfCarePage extends StatefulWidget {
  static const routeName = '/self_care';
  const selfCarePage({super.key});

  @override
  State<selfCarePage> createState() => _selfCarePageState();
}

class _selfCarePageState extends State<selfCarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _navRow(),
              const Gap(48),
              _searchBar(),
              const Gap(35),
              Text(
                'Rekomendasi Meditasi',
                style: sectionHeader,
              ),
              const Gap(18),
              Text(
                'Lakukan hal ini untuk memulai harimu',
                style: paragraph,
              ),
              const Gap(18),
              _meditationItem('Tidur Nyenyak', 3, 'Istirahat yang berkualitas',
                  'assets/img/self_care/sleep.png'),
              const Gap(18),
              _meditationItem(
                  'Belajar Meditasi',
                  4,
                  'Meditasi sederhana & mudah',
                  'assets/img/self_care/meditate.png'),
              const Gap(18),
              _meditationItem(
                  'Kesehatan Fisik',
                  3,
                  'Menyehatkan pikiran dan tubuh',
                  'assets/img/self_care/workout.png'),
              const Gap(18),
              _meditationItem(
                  'Diri yang lebih baik',
                  3,
                  'Mulai mencintai diri sendiri',
                  'assets/img/self_care/selflove.png'),
              const Gap(18),
              _meditationItem(
                  'Stress & Kecemasan',
                  4,
                  'Mulai mencintai diri sendiri',
                  'assets/img/self_care/meditate.png')
            ]),
          )
        ],
      ),
    );
  }

  Container _meditationItem(meditationName, session, meditationDesc, img) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 15,
          offset: Offset(0, 9),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              img,
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
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
                        Text('$meditationName', style: sectionHeader),
                        const Gap(5),
                        Text(
                          '• $session sesi',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '$meditationDesc',
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.8)),
                        )
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
                            color: Colors.black.withOpacity(0.08), width: 0.4),
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 20,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _meditateRow() {
    return Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border.all(color: Colors.black.withOpacity(0.08), width: 0.4),
            borderRadius: BorderRadius.circular(12)),
        child: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black,
          size: 20,
        ));
  }

  Row _searchBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            height: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 15,
                offset: Offset(0, 9),
              ),
            ]),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Cari meditasi",
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5),
                ),
                prefixIcon: Icon(Icons.search_rounded),
                prefixIconColor: Colors.black.withOpacity(0.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
        const Gap(14),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: Colors.black.withOpacity(0.08), width: 0.4)),
          child: IconButton(
            icon: Icon(IconlyBold.filter_2),
            color: Colors.white,
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Row _navRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Icon(Icons.arrow_back)),
        Text(
          'Self Care',
          style: sectionHeader,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: Colors.black.withOpacity(0.08), width: 0.4)),
          child: Icon(Icons.history),
        ),
      ],
    );
  }
}
