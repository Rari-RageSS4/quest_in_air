import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_in_air/styles/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: AppColors.bgGradient,
            ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Column(
              children: [
                // image
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: SizedBox(
                    height: 270,
                    width: 270,
                    child: Image.asset('asset/qstn person.png'),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                // title
                Text(
                  "Quest In Air",
                  style: GoogleFonts.irishGrover(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: Colors.white),
                ),

                // desc
                Text(
                  "Create your own Questionnaire & challenge your friends!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.irishGrover(
                      fontSize: 15, color: Colors.white),
                ),

                // button

                const SizedBox(
                  height: 25,
                ),

                GestureDetector(
                  onTap: () {
                    // home or login/register
                    Get.toNamed('auth');
                    Get.snackbar(
                      '',
                      "",
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: Colors.white,
                      titleText: Text(
                        'Welcome',
                        style: GoogleFonts.irishGrover(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      messageText: Text('Have a nice time',
                        style: GoogleFonts.irishGrover(
                          color: AppColors.textColor,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF644AB5),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 15.0),
                    child: Text(
                      "Let's start",
                      style: GoogleFonts.irishGrover(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
