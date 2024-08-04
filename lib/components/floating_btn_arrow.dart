import 'package:flutter/material.dart';

class FloatingBtnArrow extends StatelessWidget {
  final VoidCallback onPressed;
  const FloatingBtnArrow({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
                    onPressed: onPressed,
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF644AB5),
                    splashColor: Colors.yellow,
                    hoverColor: Colors.red,
                    elevation: 10,
                    heroTag: 'Next',
                    shape: const CircleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: const Icon(Icons.arrow_circle_right_rounded),
                  );
  }
}