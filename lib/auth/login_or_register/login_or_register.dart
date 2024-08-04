import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quest_in_air/auth/login_or_register/login_or_register_controller.dart';
import 'package:quest_in_air/view/login/login_screen.dart';
import 'package:quest_in_air/view/registration/registration_screen.dart';

class LoginOrRegisterScreen extends GetView<LoginOrRegisterController> {
  const LoginOrRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.showLoginPage.value) {
        return LoginScreen(onTap: controller.togglePages);
      } else {
        return RegistrationScreen(onTap: controller.togglePages);
      }
    });
  }
}
