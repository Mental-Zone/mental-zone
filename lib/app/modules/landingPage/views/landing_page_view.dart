import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:menzo/app/modules/article/views/article_view.dart';
import 'package:menzo/app/modules/home/views/home_view.dart';
import 'package:menzo/app/shared/theme/color.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  LandingPageView({Key? key}) : super(key: key);

  final LandingPageController controller = Get.put(LandingPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Obx(
              () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _bottomNavItem(context,
                        icon: IconlyLight.home, page: 0, label: 'Home'),
                    _bottomNavItem(context,
                        icon: IconlyLight.paper, page: 1, label: 'Article'),
                    _bottomNavItem(context,
                        icon: IconlyLight.time_circle,
                        page: 2,
                        label: 'History'),
                    _bottomNavItem(context,
                        icon: IconlyLight.profile, page: 3, label: 'Profile'),
                  ]),
            ),
          ),
        ),
        body: PageView(
          controller: controller.pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [HomeView(), ArticleView()],
        ));
  }

  Widget _bottomNavItem(BuildContext context,
      {required icon, required page, required label}) {
    return ZoomTapAnimation(
      onTap: () => controller.goToTab(page),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,
              color: controller.currentPage.value == page
                  ? primaryColor
                  : Colors.grey),
          Text(label,
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: controller.currentPage.value == page
                    ? FontWeight.w600
                    : FontWeight.w400,
                color: controller.currentPage.value == page
                    ? primaryColor
                    : Colors.grey,
              )),
        ],
      ),
    );
  }
}
