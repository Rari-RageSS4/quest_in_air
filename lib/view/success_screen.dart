import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_in_air/components/floating_btn_arrow.dart';
import 'package:quest_in_air/styles/colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingBtnArrow(
          onPressed: () => Get.toNamed('/home'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          height: Get.height,
          decoration: const BoxDecoration(
            gradient: AppColors.bgGradient,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // image
                Image.asset(
                  'asset/party-popper-emoji-2045x2048-3cdxvcsw.png',
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 35,),
                // text
                Text(
                  textAlign: TextAlign.center,
                  'Your Questionnaire is successfully uploaded!!',
                  style: GoogleFonts.irishGrover(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
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
