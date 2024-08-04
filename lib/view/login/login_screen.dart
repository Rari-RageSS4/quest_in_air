import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_in_air/styles/colors.dart';
import 'package:quest_in_air/view/login/login_controller.dart';

class LoginScreen extends GetView<LoginController> {

  final void Function()? onTap;
  const LoginScreen({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
          decoration: const BoxDecoration(gradient: AppColors.bgGradient),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),

                Text(
                  'Quest In Air',
                  style: GoogleFonts.irishGrover(
                    color: Colors.white,
                    fontSize: 42,
                  ),
                ),

                const SizedBox(
                  height: 35,
                ),

                Text(
                  'Enter your email',
                  style: GoogleFonts.irishGrover(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),

                // email text field
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: controller.mailOrPhnoController,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.irishGrover(
                        color: Colors.grey,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Color(0xFF644AB5)),
                      ),
                    ),
                  ),
                ),

                // password text field

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: controller.passwordController,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.irishGrover(
                        color: Colors.grey,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Color(0xFF644AB5)),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                // button
                GestureDetector(
                  onTap: () async {
                    FocusManager.instance.primaryFocus?.unfocus();
                    controller.login();
                    // await Future.delayed(const Duration(seconds: 3));
                    //Get.toNamed('/home');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF644AB5),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 15.0),
                    child: Text(
                      "Login",
                      style: GoogleFonts.irishGrover(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                // Or
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Or',
                      style: GoogleFonts.irishGrover(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 16,
                ),

                Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // icon image
                      Image.asset('asset/logogoogle.png'),

                      const SizedBox(
                        width: 25,
                      ),
                      // text
                      Text(
                        'Continue with google',
                        style: GoogleFonts.irishGrover(
                            color: const Color(0xFF644AB5)),
                      )
                    ],
                  ),
                ),

                // not a member
                Text(
                  'Not a member?',
                  style: GoogleFonts.irishGrover(
                    color: Colors.white,
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                // login btn

                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF644AB5),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 15.0),
                    child: Text(
                      "Register",
                      style: GoogleFonts.irishGrover(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
