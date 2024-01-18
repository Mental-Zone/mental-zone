import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController nameC = TextEditingController(text: 'Budi');
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController(text: '123123');

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
