import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:mental_zone/utils/app_styles.dart';

import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';

class articleScreen extends StatefulWidget {
  static const routeName = '/articlescreen';
  const articleScreen({super.key});

  @override
  State<articleScreen> createState() => _articleScreenState();
}

class _articleScreenState extends State<articleScreen> {
  int _currentIndex = 1;

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
                _navRow(),
                const Gap(37),
                _searchBar(),
                const Gap(21),
                _mainArticle(context),
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
          currentIndex: _currentIndex,
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
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
            if (index == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (index == 1) {
              Navigator.pushNamed(context, '/articlescreen');
            } else if (index == 2) {
              Navigator.pushNamed(context, '/history');
            } else if (index == 3) {
              Navigator.pushNamed(context, '/profile');
            }
          },
      ),
    );
  }

  //main row
  Row _mainArticle(BuildContext context){
    return Row(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Read Menzo's article!",
                        style: sectionHeader,
                      ),
                      const Gap(10),
                      Text(
                        'It might match your search',
                        style: paragraph,
                      ),
                      const Gap(37),
                      _articleContainer(),
                      const Gap(10),
                      _article2Container(),
                      const Gap(10),
                      _article3Container(),
                      const Gap(10),
                      _article4Container(),
                      const Gap(10),
                      _article2Container(),
                      const Gap(10),
                      _article3Container(),
                    ],
                  )
              ],
            ),
          )
        ],
      );
  }

  // top navbar
  Row _navRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Icon(Icons.arrow_back),
        ),
        Text(
          'Article',
          style: sectionHeader,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/bookmark');
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.black.withOpacity(0.08),
                width: 0.4,
              ),
            ),
            child: Icon(Icons.bookmark),
          ),
        ),
      ],
    );
  }

  // search bar row
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
                hintText: "Search for articles",
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
            icon: Icon(Icons.filter_list),
            color: Colors.white,
            onPressed: () {},
          ),
        )
      ],
    );
  }

  // container article
  Container _articleContainer() {
    return Container(
      width: 310,
      height: 84,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xFFDFE0E0)),
        borderRadius: BorderRadius.circular(10),
      ),
      shadows: [
        BoxShadow(
        color: Color(0x0A5887A4),
        blurRadius: 32,
        offset: Offset(0, 8),
        spreadRadius: 0,
        )
      ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/img/article/article1.png',
              width: 62,
              height: 62,
              fit: BoxFit.cover,
            ),
          ),
          const Gap(10),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/article/detailarticle');
                      },
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 180),
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false, 
                          text: TextSpan(
                            text: 'Penyebab Sering Terbangun Saat Tengah Malam',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              color: Color(0xFF1D62FC),
                              height: 1.5
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      IconlyBold.bookmark,
                      color: primaryColor,
                      size: 20,
                    )
                ],),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'CNN Indonesia',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    ),
                    const Gap(10),
                    Container(
                        width: 4,
                        height: 4,
                        decoration: ShapeDecoration(
                            color: Color(0xFF5F6164),
                            shape: OvalBorder(),
                        ),
                    ),
                    const Gap(10),
                    Text(
                        '21/06/2023',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    )
                  ],
                )
              ]),
          )
        ],
      ),
    );
  }
  
  // article 2
  Container _article2Container() {
    return Container(
      width: 310,
      height: 84,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xFFDFE0E0)),
        borderRadius: BorderRadius.circular(10),
      ),
      shadows: [
        BoxShadow(
        color: Color(0x0A5887A4),
        blurRadius: 32,
        offset: Offset(0, 8),
        spreadRadius: 0,
        )
      ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/img/article/article2.png',
              width: 62,
              height: 62,
              fit: BoxFit.cover,
            ),
          ),
          const Gap(10),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 180),
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false, 
                          text: TextSpan(
                            text: 'Sederet Masalah yang Bikin Gen Z dan Milenial Rentan Stres',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              height: 1.5
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      IconlyBold.bookmark,
                      color: primaryColor,
                      size: 20,
                    )
                ],),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'CNN Indonesia',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    ),
                    const Gap(10),
                    Container(
                        width: 4,
                        height: 4,
                        decoration: ShapeDecoration(
                            color: Color(0xFF5F6164),
                            shape: OvalBorder(),
                        ),
                    ),
                    const Gap(10),
                    Text(
                        '21/06/2023',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    )
                  ],
                )
              ]),
          )
        ],
      ),
    );
  }

  // article 3
  Container _article3Container() {
    return Container(
      width: 310,
      height: 84,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xFFDFE0E0)),
        borderRadius: BorderRadius.circular(10),
      ),
      shadows: [
        BoxShadow(
        color: Color(0x0A5887A4),
        blurRadius: 32,
        offset: Offset(0, 8),
        spreadRadius: 0,
        )
      ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/img/article/article3.png',
              width: 62,
              height: 62,
              fit: BoxFit.cover,
            ),
          ),
          const Gap(10),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 180),
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false, 
                          text: TextSpan(
                            text: 'Kurangi Risiko Demensia, Ini 5 Manfaat Meditasi',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              height: 1.5
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      IconlyBold.bookmark,
                      color: primaryColor,
                      size: 20,
                    )
                ],),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'CNN Indonesia',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    ),
                    const Gap(10),
                    Container(
                        width: 4,
                        height: 4,
                        decoration: ShapeDecoration(
                            color: Color(0xFF5F6164),
                            shape: OvalBorder(),
                        ),
                    ),
                    const Gap(10),
                    Text(
                        '21/06/2023',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    )
                  ],
                )
              ]),
          )
        ],
      ),
    );
  }

  // article 4
   Container _article4Container() {
    return Container(
      width: 310,
      height: 84,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xFFDFE0E0)),
        borderRadius: BorderRadius.circular(10),
      ),
      shadows: [
        BoxShadow(
        color: Color(0x0A5887A4),
        blurRadius: 32,
        offset: Offset(0, 8),
        spreadRadius: 0,
        )
      ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/img/article/article4.png',
              width: 62,
              height: 62,
              fit: BoxFit.cover,
            ),
          ),
          const Gap(10),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 180),
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false, 
                          text: TextSpan(
                            text: 'Istirahat Cukup dengan Ketahui Waktu Tidur yang Baik',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              height: 1.5
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      IconlyBold.bookmark,
                      color: primaryColor,
                      size: 20,
                    )
                ],),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'CNN Indonesia',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    ),
                    const Gap(10),
                    Container(
                        width: 4,
                        height: 4,
                        decoration: ShapeDecoration(
                            color: Color(0xFF5F6164),
                            shape: OvalBorder(),
                        ),
                    ),
                    const Gap(10),
                    Text(
                        '21/06/2023',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    )
                  ],
                )
              ]),
          )
        ],
      ),
    );
  }
}