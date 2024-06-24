
import 'package:flutter/material.dart';

import '../screens/notification_screen.dart';

class Custom {
  customAppBar(context, title, [iconWidget]) {

    return AppBar(
      toolbarHeight: 75,
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          )),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Roboto-Regular',
          fontWeight: FontWeight.w400,
          height: 1.60,
        ),
      ),

      actions: [
        iconWidget.toString()=='null'
            ? Container()
            : Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context ,
                        MaterialPageRoute(builder: (context) =>  const NotificationScreen(), maintainState: false));
                  },
                  icon: Icon(
                    iconWidget,
                    color: Colors.white,
                  )),
            ),
      ],
      centerTitle: true,
      backgroundColor: const Color(0xFF383C59),
    );
  }
}
