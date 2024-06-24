import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom().customAppBar(context, 'Notification'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 5,
              // ),
              _buildOurCarsCategory(),
            ],
          ),
        ),
      ),
    );
  }

  _buildOurCarsCategory() {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/notify bell 1.png',
                      height: 50, width: 50),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'A new car ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 1.60,
                                  ),
                                ),
                                TextSpan(
                                  text: 'added to the ',
                                  style: TextStyle(
                                    color: Color(0x8A0A113C),
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 1.33,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Car store',
                                  style: TextStyle(
                                    color: Color(0xCC000000),
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 1.33,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // const Text(
                          //   'A new car added to the Car store',
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 16,
                          //     fontFamily: 'Roboto',
                          //     fontWeight: FontWeight.w500,
                          //     height: 1.60,
                          //   ),
                          // ),
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset('assets/images/delete1.png',height: 20, width: 20),
                        ],
                      ),

                      const Text(
                        '21 Nov, 2022  |  10:00 Am',
                        style: TextStyle(
                          color: Color(0x8A0A113C),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 2.67,
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              const Divider(
                color: Color(0x8A0A113C),height: 8,
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 17,
          );
        },
        itemCount: 15);
  }
}
