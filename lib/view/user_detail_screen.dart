import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // profile picture

          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 50,
                  //backgroundImage: _picture != null ? MemoryImage(_picture!) : null,
                ),
                Positioned(
                  child: InkWell(
                    onTap: () {
                      // showModalBottomSheet(
                      //   context: context,
                      //   builder: ((builder) => bottomSheet()),
                      // );
                    },
                    child: const Icon(
                      Icons.camera_alt,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // user name
          const Text('Enter your name:'),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              //   controller: controller.mailOrPhnoController,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: GoogleFonts.irishGrover(
                  color: Colors.grey,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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

          // next btn
          GestureDetector(
            onTap: () async {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF644AB5),
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: Text(
                "Next",
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
    );
  }
}
