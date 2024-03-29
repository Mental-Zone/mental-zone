import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_zone/shared/theme/font.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/Login';
  const LoginScreen({super.key});
  
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context){
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
                  'Welcome back,',
                  style: TextStyle(
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
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.550000011920929),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
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
                          // email = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          // errorText: _wrongEmail ? emailText : null,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (value) {
                          // password = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          // errorText: _wrongPassword ? passwordText : null,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, ForgotPassword.id);
                          },
                          child: Text(
                            'Forgot Password?',
                            style:TextStyle(
                                  color: Color(0xFF1D62FC),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0, 
                                ),
                          ),
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
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                ),
                // AKHIR BUTTON RAISE
                // LINE PEMBATAS
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 90.0,
                          color: const Color.fromARGB(221, 61, 61, 61),
                        ),
                      ),
                      Text(
                        'Or Sign Up With',
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
                          width: 90.0,
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
                              SizedBox(width: 10.0), // Add some spacing between image and text
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
                        "Don't have an account?",
                        style: TextStyle(
                          color: Color(0xFF605B57),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/Register');
                        },
                        child: Text(
                          ' Register',
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
      )
    );
  }
}