import 'package:flutter/material.dart';
import 'package:mental_zone/pages/counseling/counseling.dart';
import 'package:mental_zone/pages/counseling/counselingDetails.dart';
import 'package:mental_zone/pages/counseling/counseling_appointment.dart';
import 'package:mental_zone/pages/onboarding_controller.dart';
import 'package:mental_zone/pages/loginScreen.dart';
import 'package:mental_zone/pages/registerScreen.dart';
import 'package:mental_zone/pages/chat.dart';
import 'package:mental_zone/pages/home.dart';
import 'package:mental_zone/pages/self_care/self_care.dart';
import 'package:mental_zone/pages/article/articleScreen.dart';
import 'package:mental_zone/pages/article/bookmark.dart';
import 'package:mental_zone/pages/article/detailartcle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // initialRoute: HomePage.routeName,
        initialRoute: OnBoardingScreen.routeName,
        routes: {
          OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          RegisterScreen.routeName: (context) => const RegisterScreen(),
          HomePage.routeName: (context) => const HomePage(),
          ChatPage.routeName: (context) => const ChatPage(),
          CounselingPage.routeName: (context) => const CounselingPage(),
          CounselingDetails.routeName: (context) => const CounselingDetails(),
          selfCarePage.routeName: (context) => const selfCarePage(),
          AppointmentPage.routeName: (context) => const AppointmentPage(),
          articleScreen.routeName:(context) => const articleScreen(),
          bookmarkScreen.routeName:(context) => const bookmarkScreen(),
          detailsArticleScreen.routeName:(context) => const detailsArticleScreen()
        });
  }
}
