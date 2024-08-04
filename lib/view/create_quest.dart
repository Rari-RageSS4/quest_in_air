import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_in_air/components/floating_btn_arrow.dart';
import 'package:quest_in_air/components/textfield.dart';
import 'package:quest_in_air/styles/colors.dart';

class CreateQuest extends StatelessWidget {
  const CreateQuest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingBtnArrow(
        onPressed: () => Get.toNamed('/add'),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
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
                    height: 50,
                  ),
                  // no of qstns
                  Text(
                    'how many questions would you like to add?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.irishGrover(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  const Padding(
                    padding: EdgeInsets.all(32.0),
                    child: CustomTextfield(),
                  ),

                  // title and genre prompt
                  Text(
                    'Give an appropriate genre & title for the questionnaire you’re preparing!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.irishGrover(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Genre:',
                        style: GoogleFonts.irishGrover(color: Colors.white),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: CustomTextfield(),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Title:',
                        style: GoogleFonts.irishGrover(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 32),
                            child: CustomTextfield()),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // duration prompt
                  Text(
                    'how much duration will you be providing for the competitor to solve the solution!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.irishGrover(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  const Padding(
                    padding: EdgeInsets.all(32.0),
                    child: CustomTextfield(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
