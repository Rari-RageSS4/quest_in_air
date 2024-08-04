import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quest_in_air/styles/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // add profile pic
          Stack(
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person_outline_outlined),
              ),

              Positioned(
                child: InkWell(
                  onTap: (){

                  },
                  child: const Icon(
                    Icons.camera_alt,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),

          // text & text field
          Text('Enter your name:',
            style: AppText.normalText,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Name',
            ),
          ),

          // button
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              width: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text('Next',
                style: AppText.btnText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
