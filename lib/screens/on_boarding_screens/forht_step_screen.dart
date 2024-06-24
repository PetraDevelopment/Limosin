import 'package:flutter/material.dart';

class ForthStepScreen extends StatelessWidget {
  const ForthStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'View',
                    style: TextStyle(
                      color: Color(0xFF383C59),
                      fontSize: 24,
                      fontFamily: 'Roboto-Medium',
                      fontWeight: FontWeight.w500,
                      height: 1.33,
                    ),
                  ),
                  TextSpan(
                    text: ' Your Trip Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Roboto-Medium',
                      fontWeight: FontWeight.w500,
                      height: 1.33,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Accept the suitable ride to you',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Roboto-Medium',
                fontWeight: FontWeight.w500,
                height: 2,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/images/Android Large - 9 1.png",
                  width: 208,
                  height: 420,
                ),
                Positioned(
                  top: 70,
                  right: -50,
                  child: Image.asset(
                    "assets/images/Frame 73.png",
                    width: 300,
                    height: 422,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
