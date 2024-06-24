import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:limousine/models/available_car_model.dart';
import 'package:limousine/screens/trip_details_screen.dart';

import '../../components/custom_appbar.dart';
import '../../components/dark_button.dart';
import '../../utils/constants.dart';
import '../ride_details/Ride_details_controller.dart';

class AvailableCarsScreen extends StatelessWidget {
  List<Datum>? data;
   AvailableCarsScreen(this. data, {super.key});

  @override
  Widget build(BuildContext context) {
    return
            Scaffold(
        appBar:
            Custom().customAppBar(context, 'Available Cars', Icons.notifications),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildOurCarsCategory(data),
              ],
            ),
          ),
        ),
      );
          // ;},
    // );
  }

  _buildOurCarsCategory(List<Datum>? data) {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return
            Container(
            width: double.infinity,
            height: 250,
            padding: const EdgeInsets.all(17),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: [
                BoxShadow(
                    color: Color(0xffE7EAFF), //New
                    blurRadius: 10.0,
                    offset: Offset(0, -5))
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Text(
                        'Toyota ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                        ),
                      ),
                    ),
                    SizedBox(
                          height: 25,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Color : ',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w500,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: '${data[index].cColor}',
                              style: TextStyle(
                                color: Color(0xCC000000),
                                fontSize: 12,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w100,
                                height: 1.33,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                          height: 25,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Model : ',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w500,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: '${data[index].cModel}',
                              style: TextStyle(
                                color: Color(0xCC000000),
                                fontSize: 12,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w100,
                                height: 1.33,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(        height: 25,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Num of passengers : ',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w500,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: '${data[index].cPassengersNum}',
                              style: TextStyle(
                                color: Color(0xCC000000),
                                fontSize: 12,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w100,
                                height: 1.33,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(      height: 25,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Num of luggages : ',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w500,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: '${data[index].cLuggageCount}',
                              style: TextStyle(
                                color: Color(0xCC000000),
                                fontSize: 12,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w100,
                                height: 1.33,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(      height: 25,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Number :',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w500,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: '${data[index].cNumber}',
                              style: TextStyle(
                                color: Color(0xCC000000),
                                fontSize: 12,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w100,
                                height: 1.33,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Image.network(apiBaseUrl+"/"+data[index].cImage!, height: 100, width: 150),
                    // Image.network('assets/images/pngwing 1.png', height: 100, width: 150),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: DarkButton(
                        txt: 'Accept',
                        onPress: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TripDetailsScreen(data[index]))),
                        buttonWidth: 130,
                        buttonHeight: 45,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 17,
          );
        },
        itemCount: data!.length);
  }
}
