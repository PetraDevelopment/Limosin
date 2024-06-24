import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../routes/app_routes.dart';
import 'car_details/cars_details_screen.dart';

class AddSuccessfullyScreen extends StatelessWidget {
  String? CarId;
   AddSuccessfullyScreen(this.CarId, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
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
                padding: const EdgeInsets.only(bottom:150,left: 10),
                child: Image.asset(
                    'assets/images/iconback.png'
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/de trabajo 1 2.png',height: 250
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: Text(
                  'Car Added\nSuccessfully',
                  style: TextStyle(
                    color: Color(0xff383C59),
                    fontSize: 32,
                    fontFamily: 'Roboto-Bold',
                    fontWeight: FontWeight.w600,
                    height: 1.30,

                  ),
                   textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.to(CarsDetailsScreen(),arguments: [CarId]);

                  // Navigator.push(
                  //     context ,
                  //     MaterialPageRoute(builder: (context) =>  const CarsDetailsScreen(), maintainState: false));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'See Details',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xff49454F),
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 1.60,
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
              ),
              SizedBox(height: 80,),

            ],
          ),
        ),
      ),
    );
  }
}