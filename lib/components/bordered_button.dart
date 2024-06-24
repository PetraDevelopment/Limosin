import 'package:flutter/material.dart';

import '../screens/on_boarding_screens/first_step_screen.dart';

class BorderedButton extends StatelessWidget {
  String txt;
Function()onTap;
  BorderedButton({super.key, required this.txt,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(
        width: 146,
        height: 42,
        padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 9),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child:  Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
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
          ],
        ),
      ),
    );
  }
}
