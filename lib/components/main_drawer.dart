import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limousine/screens/notification_screen.dart';
import 'package:limousine/screens/profile/profile_screen.dart';
import 'package:limousine/screens/trip_details_screen.dart';

import '../screens/about_us_screen.dart';
import '../screens/contact_us_screen.dart';
import '../screens/map_screen.dart';
import '../screens/setting_screen.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    Locale locale =WidgetsBinding.instance.window.locale;

    // Extract the language code from the locale
    String languageCode = locale.languageCode;
    return Container(
      width: 250,
      child: Drawer(
        shape:  RoundedRectangleBorder(
          borderRadius:(languageCode=="en")? BorderRadius.only(
              topRight: Radius.circular(30), bottomRight: Radius.circular(30)):BorderRadius.only(
              topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
        ),
        backgroundColor: const Color(0xFF383C59),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Container(
              height: 150,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.only(
                        topRight: Radius.circular(30), bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30) ),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Ellipse 2.png',
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Abhishek Mishra",
                      style: TextStyle(
                        color: Color(0xff383C59),
                        fontSize: 17,
                        fontFamily: 'Roboto-Regular',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //DrawerHeader
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    "assets/images/account.png",
                    height: 25,
                    width: 25,
                  ),
                  title: Text("Account",
                      style: const TextStyle(
                          color: Color.fromRGBO(243, 237, 237, 1.0),
                          fontSize: 17)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfileScreen()));
                  }),
            ),
            const Divider(
              color: Color(0xFF66000000),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    "assets/images/bell1.png",
                    height: 25,
                    width: 25,
                  ),
                  title: Text("Notification",
                      style: const TextStyle(
                          color: Color.fromRGBO(243, 237, 237, 1.0),
                          fontSize: 17)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationScreen()));
                  }),
            ),
            const Divider(
              color: Color(0xFF66000000),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    "assets/images/location.png",
                    height: 25,
                    width: 25,
                  ),
                  title: Text("Current Trip",
                      style: const TextStyle(
                          color: Color.fromRGBO(243, 237, 237, 1.0),
                          fontSize: 17)),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => TripDetailsScreen()));
                  }),
            ),
            const Divider(
              color: Color(0xFF66000000),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    "assets/images/setting.png",
                    height: 25,
                    width: 25,
                  ),
                  title: Text("Setting",
                      style: const TextStyle(
                          color: Color.fromRGBO(243, 237, 237, 1.0),
                          fontSize: 17)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingScreen()));
                    // Get.to(() => const FinalReading());
                  }),
            ),
            const Divider(
              color: Color(0xFF66000000),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    "assets/images/about.png",
                    height: 25,
                    width: 25,
                  ),
                  title: Text("About us",
                      style: const TextStyle(
                          color: Color.fromRGBO(243, 237, 237, 1.0),
                          fontSize: 17)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUsScreen()));
                    // Get.to(() => const About());
                  }),
            ),
            const Divider(
              color: Color(0xFF66000000),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    "assets/images/contact-us.png",
                    height: 25,
                    width: 25,
                  ),
                  title: Text("Contact Us",
                      style: const TextStyle(
                          color: Color.fromRGBO(243, 237, 237, 1.0),
                          fontSize: 17)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactUsScreen()));
                  }),
            ),
            const Divider(
              color: Color(0xFF66000000),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    "assets/images/faq.png",
                    height: 25,
                    width: 25,
                  ),
                  title: Text("FAQ",
                      style: const TextStyle(
                          color: Color.fromRGBO(243, 237, 237, 1.0),
                          fontSize: 17)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MapScreen()));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: const Divider(
                color: Color(0xFFFFFFFF),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 30),
              child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    "assets/images/logout.png",
                    height: 25,
                    width: 25,
                  ),
                  title: const Text("Log out",
                      style: TextStyle(
                          color: Color.fromRGBO(243, 237, 237, 1.0),
                          fontSize: 17)),
                  onTap: () async {
                    return showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Image.asset(
                              'assets/images/icon_logout.png',
                              height: 20,
                              width: 20,
                            )),
                        content: Text("Are you sure you want to log out ?" ,style: TextStyle(
                            color: Color(0xff383C59),
                        fontSize: 16,
                        fontFamily: 'Roboto-Regular',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                        ),),
                        actions: <Widget>[
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: ElevatedButton(
                                  onPressed: () async {
                                    // AuthHelper().clearUserData();
                                    // Get.offAll(const FirstStep());
                                  },
                                  child: Text("Log out"),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff259A3A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              )),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffF13939),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )),
                                    onPressed: () async {
                                      // AuthHelper().clearUserData();
                                      // Get.offAll(const FirstStep());
                                    },
                                    child: Text("Cancel"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ), //Drawer
    );
  }
}
