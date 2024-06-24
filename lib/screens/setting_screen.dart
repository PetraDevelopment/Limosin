import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';
import '../components/listtile_component.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom().customAppBar(context, 'Settings'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomListTile().CustomList(
                context,
                'Language',
                'assets/images/language.png',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingScreen(),
                        maintainState: false)),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff383C59),
                  size: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomListTile().CustomList(
                  context,
                  'Notification',
                  'assets/images/notification.png',
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingScreen(),
                          maintainState: false)),
                Transform.scale(scale: 1.50,
                  child: Switch(
                    value: true,
                    onChanged: (bool value1){},


                    activeTrackColor: Color(0xffD9D9D9),
                    activeColor: Colors.white,
                  ))),
              const SizedBox(
                height: 20,
              ),
              CustomListTile().CustomList(
                context,
                'Privacy & Policy',
                'assets/images/privacy.png',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingScreen(),
                        maintainState: false)),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff383C59),
                  size: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomListTile().CustomList(
                context,
                'Terms & Conditions',
                'assets/images/Terms.png',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingScreen(),
                        maintainState: false)),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff383C59),
                  size: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomListTile().CustomList(
                context,
                "Share application",
                'assets/images/share.png',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingScreen(),
                        maintainState: false)),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
