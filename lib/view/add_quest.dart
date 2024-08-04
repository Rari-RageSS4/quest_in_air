import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quest_in_air/components/floating_btn_arrow.dart';
import 'package:quest_in_air/components/textfield.dart';
import 'package:quest_in_air/styles/colors.dart';
import 'package:quest_in_air/styles/text_style.dart';

class AddQuest extends StatelessWidget {
  const AddQuest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingBtnArrow(
        onPressed: () {
          Get.toNamed('/success');
          print('pachu');
        } 
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    '1/10',
                    style: AppText.titleText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Duration: ',
                        style: AppText.normalText,
                      ),
                      const Expanded(child: CustomTextfield()),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'Question No: 1',
                  style: AppText.normalText,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 90,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromARGB(255, 222, 222, 222),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
            
                // options
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Options: ',
                        style: AppText.normalText,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.remove_circle_outline,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Text(
                            '3',
                            style: AppText.normalText,
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          const Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    height: 90,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromARGB(255, 222, 222, 222),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    height: 90,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromARGB(255, 222, 222, 222),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromARGB(255, 222, 222, 222),
                    ),
                    height: 90,
                    width: 360,
                    child: const TextField(
                      decoration: InputDecoration(
                      border: InputBorder.none,
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
