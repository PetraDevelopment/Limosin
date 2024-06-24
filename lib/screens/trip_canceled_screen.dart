import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';

class TripCanseledScreen extends StatelessWidget {
  const TripCanseledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle 39.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                      'assets/images/iconback.png'
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/Group 28.png'
                    ),
                  ),
                ),
                //

                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Trip Canceled\nSuccessfully',
                    style: TextStyle(
                      color: Color(0xff383C59),
                      fontSize: 32,
                      fontFamily: 'Roboto-Bold',
                      fontWeight: FontWeight.w800,
                      height: 1.30,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        'See Details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff49454F),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0xff49454F),
                    )
                    // Image.asset('assets/images/icon.png',height: 15,width: 15,)
                  ],
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Contact your driver',
                    style: TextStyle(
                      color: Color(0xff383C59),
                      fontSize: 16,
                      fontFamily: 'Roboto-Bold',
                      fontWeight: FontWeight.w500,
                      height: 1.60,
                    ),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Ellipse 2.png',
                        height: 80,
                        width: 80,),
                      SizedBox(width: 20,)
                      ,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmed Khaled ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.60,
                            ),
                          ),
                          Text(
                            '0112394862 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 1.60,
                            ),
                          ),
                          Text(
                            'Assuit , Egypt ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 1.60,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Image.asset('assets/images/call.png',
                              height: 60, width: 60),
                        ),
                      ),

                    ],
                  ),
                ),









              ],
            ),
          ),
        ),
      ),
    );
  }
}
