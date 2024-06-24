
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile {
  CustomList(context, txtTitle,image,Function() onPress, [iconWidget] ) {
    // print(iconWidget);
    return
      ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Image.asset(
              image,
              height: 25,
              width: 25,
            ),
          ),
          title: Text(txtTitle,
              style: const TextStyle(
                  fontFamily: 'Cairo-Bold',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff03314B))),
          trailing:iconWidget,
          // Icon(
          //    Icons.arrow_forward_ios_rounded,
          //   color: Color(0xff006992),
          //   size: 16,
          // ),
      onTap: onPress

      );
  }
}




  //   extends StatelessWidget {
  // String txtTitle, image;
  // Function() onPress;
  //
  // CustomListTile(
  //     {super.key,
  //     required this.txtTitle,
  //     required this.onPress,
  //     required this.image});
  //
  // @override
  // Widget build(BuildContext context) {
  //   return
  //
  // }
// }
