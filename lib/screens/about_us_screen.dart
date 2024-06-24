import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom().customAppBar(context, 'About Us'),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/chauffeur-service-1 1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child:  Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                   '“ Safe Travel,\nProfessional\ndrivers. “',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Roboto-Regular',
                      fontWeight: FontWeight.w700,

                      height: 1.20,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 80,
              ),
              Container(
                height:3.0,
                width:130.0,
                color:Colors.white,),

              const SizedBox(
                height: 20,
              ),
              // Text.rich(
              //   TextSpan(
              //     children: [
              //       TextSpan(
              //         text: 'Welcome to ',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 24,
              //           fontFamily: 'Roboto-Medium',
              //           fontWeight: FontWeight.w600,
              //           height: 1.33,
              //         ),
              //       ),
              //       TextSpan(
              //         text: 'YLimo',
              //         style: TextStyle(
              //           color: Color(0xFF383C59),
              //           fontSize: 24,
              //           fontFamily: 'Roboto-Medium',
              //           fontWeight: FontWeight.w600,
              //           height: 1.33,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. \nPretium sit commodo morbi bibendum amet\n consectetur non aliquam. A in porttitor \netiam hac. Sit pharetra risus malesuada leo\n ut. Risus suspendisse velit sit curabitur \nmolestie consectetur et id lobortis. Lorem \nipsum dolor sit amet consectetur. Pretium\n sit commodo morbi bibendum amet \nconsectetur non aliquam. A in porttitor\n etiam hac. Sit pharetra risus malesuada.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Roboto-Regular',
                    fontWeight: FontWeight.w600,
                    height: 1.90,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}