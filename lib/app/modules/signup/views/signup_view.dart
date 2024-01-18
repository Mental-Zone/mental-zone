import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menzo/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 100.0, bottom: 80.0, left: 20.0, right: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Register Yourself,',
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start your Adventure with Menzo!',
                          style: GoogleFonts.montserrat(
                            color: Colors.black.withOpacity(0.550000011920929),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    // COLUMN FIELD
                    Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            // name = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: GoogleFonts.montserrat(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            labelText: 'Name',
                            labelStyle: GoogleFonts.montserrat(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            // errorText: wrongName ? nameText : null,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            // email = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: GoogleFonts.montserrat(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            labelText: 'Email',
                            labelStyle: GoogleFonts.montserrat(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            // errorText: _wrongEmail ? emailText : null,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            // password = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.montserrat(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            labelText: 'Password',
                            labelStyle: GoogleFonts.montserrat(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            // errorText: _wrongPassword ? passwordText : null,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            // password = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.montserrat(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            labelText: 'Confirm Password',
                            labelStyle: GoogleFonts.montserrat(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            // errorText: _wrongPassword ? passwordText : null,
                          ),
                        ),
                      ],
                    ),
                    // COLUMN FIELD RAISE
                    // BUTTON RAISE
                    Container(
                        width: 338,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: Color(0xFF1D62FC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Register',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )),
                    // AKHIR BUTTON RAISE
                    // LINE PEMBATAS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1.0,
                            width: 70.0,
                            color: const Color.fromARGB(221, 61, 61, 61),
                          ),
                        ),
                        Text(
                          'Or Register With',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF5F5A57),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1.0,
                            width: 70.0,
                            color: const Color.fromARGB(221, 61, 61, 61),
                          ),
                        ),
                      ],
                    ),
                    // AKHIR LINE PEMBATAS
                    // GOOGLE DAN FACEBOOK
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              primary: Color(0xFFFAFAFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              shadowColor: Color(0x0A605B57),
                              elevation: 8,
                            ),
                            onPressed: () {
                              // onGoogleSignIn(context);
                            },
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/img/google.png',
                                    fit: BoxFit.contain,
                                    width: 16.0,
                                    height: 16.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Google',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF5F5A57),
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      height: 0.14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              primary: Color(0xFFFAFAFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              shadowColor: Color(0x0A605B57),
                              elevation: 8,
                            ),
                            onPressed: () {
                              //TODO: Implement facebook functionality
                            },
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/img/facebook.png',
                                    fit: BoxFit.contain,
                                    width: 16.0,
                                    height: 16.0,
                                  ),
                                  SizedBox(
                                      width:
                                          10.0), // Add some spacing between image and text
                                  Text(
                                    'Facebook',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF5F5A57),
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      height: 0.14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // AKHIR GOOGLE DAN FACEBOOK
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Color(0xFF605B57),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.offAllNamed(Routes.LOGIN);
                          },
                          child: Text(
                            ' Login',
                            style: TextStyle(
                              color: Color(0xFF1D62FC),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 0.12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ));
  }
}
