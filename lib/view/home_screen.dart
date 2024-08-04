import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_in_air/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: logout,
              icon: const Icon(Icons.logout_rounded),
            ),
          ],
        ),
        body: Container(
          height: Get.height,
          decoration: const BoxDecoration(
            gradient: AppColors.bgGradient,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  // create container
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => Get.toNamed('/create'),
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Create Questionnaire',
                            style: GoogleFonts.irishGrover(
                                color: const Color(0xFF644AB5), fontSize: 28),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // challenge container
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Accept Challenge',
                          style: GoogleFonts.irishGrover(
                              color: const Color(0xFF644AB5), fontSize: 28),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 35,
                  ),

                  // description text
                  Text(
                    'Create your own Questionnaire and challenge others or challenge yourself by solving Questionnaire made by others!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.irishGrover(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void logout() {
    FirebaseAuth.instance.signOut();
  }
}
