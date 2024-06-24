import 'package:flutter/material.dart';

import '../screens/on_boarding_screens/first_step_screen.dart';

class DarkButton extends StatelessWidget {
  Function() onPress;
  String txt;
  double buttonWidth, buttonHeight;

  DarkButton(
      {super.key,
      required this.txt,
      required this.onPress,
      required this.buttonWidth,
      required this.buttonHeight,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xff383C59)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color(0xff383C59)),
            ))),
        onPressed: onPress,
        child: Text(
          txt,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Roboto-Bold',
            fontWeight: FontWeight.w700,
            height: 1.71,
            letterSpacing: 0.50,
          ),
        ),
      ),
    );
  }
}
