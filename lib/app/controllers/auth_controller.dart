import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:menzo/app/routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth _authC = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _authC.authStateChanges();
  void signup(String emailAddress, String password) async {
    try {
      UserCredential myUser = await _authC.createUserWithEmailAndPassword(
          email: emailAddress, password: password);

      await myUser.user!.sendEmailVerification();
      Get.defaultDialog(
        title: "Verify your email",
        middleText:
            "We have sent you a verification email to $emailAddress. Please verify your email to continue.",
        onConfirm: () {
          Get.back();
          Get.back();
        },
        textConfirm: "OK",
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('the password is too weak');
        Get.defaultDialog(
          title: "Error occured",
          middleText: "The password is too weak, please try again",
        );
      } else if (e.code == 'email-already-in-use') {
        print('Email already in use');
        Get.defaultDialog(
          title: "Error occured",
          middleText: "Email is already in use, please try again",
        );
      }
    }
  }

  void login(String emailAddress, String password) async {
    try {
      UserCredential myUser = await _authC.signInWithEmailAndPassword(
          email: emailAddress, password: password);

      if (myUser.user!.emailVerified) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.defaultDialog(
          title: "Verify your email",
          middleText: "Please do a verification on your email to continue.",
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  void logout() async {
    await _authC.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
