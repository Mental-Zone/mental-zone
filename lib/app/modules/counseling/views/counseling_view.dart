import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:menzo/app/routes/app_pages.dart';
import 'package:menzo/app/shared/theme/color.dart';
import 'package:menzo/app/shared/theme/font.dart';

import '../controllers/counseling_controller.dart';

class CounselingView extends GetView<CounselingController> {
  const CounselingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _navRow(),
                  const Gap(48),
                  _searchBar(),
                  const Gap(41),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Online consultation with an exepert!",
                        style: sectionHeader,
                      ),
                      const Gap(10),
                      Text(
                        'Find and choose a counselor that you feel comfortable',
                        style: paragraph,
                      ),
                      const Gap(37),
                      _doctorContainer(),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Container _doctorContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 15,
          offset: Offset(0, 9),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: GestureDetector(
        onTap: () => Get.offAllNamed(Routes.COUNSELING_DETAILS),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/img/counseling/doktor1.png',
                width: 92,
                height: 89,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(19),
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
                      Text(
                        'Chrysti Denie, S.Psi',
                        style: sectionHeader,
                      ),
                      Icon(
                        IconlyBold.heart,
                        color: primaryColor,
                        size: 20,
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.08),
                    thickness: 0.4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Expertise :',
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: primaryColor),
                      ),
                      Text(
                        ' Control Emotions',
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.8)),
                      )
                    ],
                  ),
                  const Gap(6),
                  Row(
                    children: [
                      Icon(
                        IconlyBold.star,
                        color: primaryColor,
                        size: 16,
                      ),
                      const Gap(8),
                      Text(
                        '4.8 (60 Reviews)',
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
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
                hintText: "Cari konselor",
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

  Row _navRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.HOME);
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
          child: Icon(Icons.history),
        ),
      ],
    );
  }
}
