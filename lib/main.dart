import 'package:flutter/material.dart';
import 'package:mental_zone/pages/onboarding_controller.dart';
import 'package:mental_zone/pages/loginScreen.dart';
import 'package:mental_zone/pages/registerScreen.dart';
import 'package:mental_zone/pages/chat.dart';
import 'package:mental_zone/pages/home.dart';

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
        });
  }
}
