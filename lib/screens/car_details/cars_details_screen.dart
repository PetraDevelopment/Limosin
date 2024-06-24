import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:limousine/screens/ride_details/ride_details_screen.dart';

import '../../components/custom_appbar.dart';
import '../../components/dark_button.dart';
import '../../utils/constants.dart';
import '../cars_see_more_screen.dart';
import 'car_details_controller.dart';

class CarsDetailsScreen extends StatelessWidget {


  CarsDetailsScreen( {super.key});

  final height = 150.0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarDetailsController>(
      init: CarDetailsController(),
      builder: (controller) {
        return Scaffold(
          appBar: Custom()
              .customAppBar(context, 'Car Details', Icons.notifications),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 30,
                ),
                Center(
                  child:controller.CarDetails.value.data?[0].cImage!=null? Image.network(apiBaseUrl+"/"+controller.CarDetails.value.data![0].cImage!, height: 350,
                    width: 350,):null
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "${controller.CarDetails.value.data?[0].ctname}",
                          style: TextStyle(
                            color: Color(0xff383C59),
                            fontSize: 25,
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w700,
                            height: 1.60,
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                      '${controller.CarDetails.value.data?[0].cDescription}',
                   // 'The automaker has lost its way in recent\nyears, prioritizing luxury and in-car technology\nversus satisfying driving characteristics and\ncars that communicate road feel.',
                    style: TextStyle(
                      color: Color(0xff757679),
                      fontSize: 16,
                      fontFamily: 'Roboto-Regular',
                      fontWeight: FontWeight.w400,
                      height: 1.60,
                    ),
                  ),
                ),
                 SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Properties ",
                    style: TextStyle(
                      color: Color(0xff383C59),
                      fontSize: 20,
                      fontFamily: 'Roboto-Regular',
                      fontWeight: FontWeight.w600,
                      height: 1.60,
                    ),
                  ),
                ),
                 SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Color : ',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w500,
                                  height: 1.33,
                                ),
                              ),
                              TextSpan(
                                text: '${controller.CarDetails.value.data?[0].cColor}',
                                style: TextStyle(
                                  color: Color(0xCC000000),
                                  fontSize: 14,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w100,
                                  height: 1.33,
                                ),
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Num of passengers  :',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w500,
                                  height: 1.33,
                                ),
                              ),
                              TextSpan(
                                text: ' ${controller.CarDetails.value.data?[0].cPassengersNum}',
                                style: TextStyle(
                                  color: Color(0xCC000000),
                                  fontSize: 14,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w100,
                                  height: 1.33,
                                ),
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Model  : ',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w500,
                                  height: 1.33,
                                ),
                              ),
                              TextSpan(
                                text: '${controller.CarDetails.value.data?[0].cModel}',
                                style: TextStyle(
                                  color: Color(0xCC000000),
                                  fontSize: 14,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w100,
                                  height: 1.33,
                                ),
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Num of luggages :',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w500,
                                  height: 1.33,
                                ),
                              ),
                              TextSpan(
                                text: ' ${controller.CarDetails.value.data?[0].cLuggageCount}',
                                style: TextStyle(
                                  color: Color(0xCC000000),
                                  fontSize: 14,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w100,
                                  height: 1.33,
                                ),
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Number : ',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontFamily: 'Roboto-Medium',
                            fontWeight: FontWeight.w500,
                            height: 1.33,
                          ),
                        ),
                        TextSpan(
                          text: '${controller.CarDetails.value.data?[0].cNumber}',
                          style: TextStyle(
                            color: Color(0xCC000000),
                            fontSize: 14,
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
                  height: 20,
                ),
                Center(
                  child: DarkButton(
                    txt: 'Book',
                    onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RideDetailsScreen())),
                    buttonWidth: 250,
                    buttonHeight: 50,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void actionPopUpItemSelected(String value, BuildContext context) {
    if (value == 'edit') {
    } else if (value == 'delete') {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset(
                'assets/images/icon_logout.png',
                height: 20,
                width: 20,
              )),
          content: Text(
            "Are you sure you want to delete\nyour car ?",
            style: TextStyle(
              color: Color(0xff383C59),
              fontSize: 16,
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.w400,
              height: 1.60,
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            buildSuccessDialog(context),
                      );
                    },
                    child: Text("Delete"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff259A3A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffF13939),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onPressed: () async {
                        // AuthHelper().clearUserData();
                        // Get.offAll( FirstStep());
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
    }
  }

  // void showPopupMenu(BuildContext context) async {
  //   final value = await showMenu(
  //     context: context,
  //     position: RelativeRect.fromLTRB(15, 500, 10, 0),
  //     items: [
  //       PopupMenuItem<String>(
  //         value: 'option1',
  //         child: Container(
  //           width: 90,
  //           child: Row(
  //             children: [
  //               Image.asset(
  //                 'assets/images/edit1.png',
  //                 height: 20,
  //                 width: 20,
  //               ),
  //               SizedBox(
  //                 width: 5,
  //               ),
  //               Text('Edit'),
  //             ],
  //           ),
  //         ),
  //       ),
  //       PopupMenuItem<String>(
  //         value: 'option2',
  //         child: Container(
  //           width: 90,
  //           child: Row(
  //             children: [
  //               Image.asset(
  //                 'assets/images/delete123.png',
  //                 height: 20,
  //                 width: 20,
  //               ),
  //               SizedBox(
  //                 width: 5,
  //               ),
  //               Text('Delete'),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(10.0),
  //     ),
  //     elevation: 8,
  //     color: Colors.white,
  //     useRootNavigator: true,
  //   );
  //
  //   switch (value) {
  //     case 'option1':
  //       // Perform action for option 1
  //       break;
  //     case 'option2':
  //       showDialog(
  //         context: context,
  //         builder: (ctx) => AlertDialog(
  //           title: Align(
  //               alignment: AlignmentDirectional.topEnd,
  //               child: Image.asset(
  //                 'assets/images/icon_logout.png',
  //                 height: 20,
  //                 width: 20,
  //               )),
  //           content: Text(
  //             "Are you sure you want to delete\nyour car ?",
  //             style: TextStyle(
  //               color: Color(0xff383C59),
  //               fontSize: 16,
  //               fontFamily: 'Roboto-Regular',
  //               fontWeight: FontWeight.w400,
  //               height: 1.60,
  //             ),
  //           ),
  //           actions: <Widget>[
  //             Row(
  //               children: [
  //                 Expanded(
  //                     child: Padding(
  //                   padding:  EdgeInsets.symmetric(horizontal: 8.0),
  //                   child: ElevatedButton(
  //                     onPressed: () async {
  //                       showDialog(
  //                         context: context,
  //                         builder: (BuildContext context) =>
  //                             buildSuccessDialog(context),
  //                       );
  //                       //  dialogBox();
  //                       // showDialog(
  //                       //   context: context,
  //                       //   builder: (ctx) => AlertDialog(
  //                       //     title:
  //                       //     Align(
  //                       //         alignment: AlignmentDirectional.topEnd,
  //                       //         child: Image.asset(
  //                       //           'assets/images/icon_logout.png',
  //                       //           height: 20,
  //                       //           width: 20,
  //                       //         )),
  //                       //     content: Center(
  //                       //       child: Column(
  //                       //         mainAxisSize: MainAxisSize.max,
  //                       //         children: [
  //                       //           Image.asset(
  //                       //             'assets/images/deletecar.png',
  //                       //
  //                       //           ),
  //                       //           Text("Car Deleted\nSuccessfully"),
  //                       //         ],
  //                       //       ),
  //                       //     ),
  //                       //
  //                       //   ),
  //                       // );
  //                     },
  //                     child: Text("Delete"),
  //                     style: ElevatedButton.styleFrom(
  //                         backgroundColor: Color(0xff259A3A),
  //                         shape: RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(10),
  //                         )),
  //                   ),
  //                 )),
  //                 Expanded(
  //                   child: Padding(
  //                     padding:  EdgeInsets.symmetric(horizontal: 8.0),
  //                     child: ElevatedButton(
  //                       style: ElevatedButton.styleFrom(
  //                           backgroundColor: Color(0xffF13939),
  //                           shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(10),
  //                           )),
  //                       onPressed: () async {
  //                         // AuthHelper().clearUserData();
  //                         // Get.offAll( FirstStep());
  //                       },
  //                       child: Text("Cancel"),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       );
  //       // Perform action for option 2
  //       break;
  //   }
  // }

  Widget buildSuccessDialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 400,
            height: 270,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color:  Color(0xFFFFFF),
              borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Image.asset(
                      'assets/images/icon_logout.png',
                      height: 20,
                      width: 20,
                    )),
                Image.asset(
                  'assets/images/cardeleted.png',
                  height: 150,
                  width: 170,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Car Deleted\nSuccessfully",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff49454F),
                    fontSize: 21,
                    fontFamily: 'Roboto-Bold',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CarsSeeMoreScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Back to Cars',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff49454F),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xff49454F),
                      )
                      // Image.asset('assets/images/icon.png',height: 15,width: 15,)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      actions:  <Widget>[],
    );
  }

// Expanded(
  //   flex: 1,
  //   child: Align(
  //     alignment: AlignmentDirectional.bottomEnd,
  //     child: PopupMenuButton(
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(10.0),
  //           ),
  //           elevation: 8,
  //           color: Colors.white,
  //
  //       icon: Icon(Icons.more_vert,size: 35,color:Color(0xff383C59) ,),
  //       itemBuilder: (context) {
  //         return [
  //           PopupMenuItem<String>(
  //             value: 'edit',
  //             child: Container(
  //               width: 90,
  //               child: Row(
  //                 children: [
  //                   Image.asset(
  //                     'assets/images/edit1.png',
  //                     height: 20,
  //                     width: 20,
  //                   ),
  //                   SizedBox(
  //                     width: 5,
  //                   ),
  //                   Text('Edit',style:  TextStyle(
  //                       fontFamily: 'Cairo-Bold',
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: 14,
  //                       color: Color(0xff383C59))),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           PopupMenuItem<String>(
  //             value: 'delete',
  //             child: Container(
  //               width: 90,
  //               child: Row(
  //                 children: [
  //                   Image.asset(
  //                     'assets/images/delete123.png',
  //                     height: 20,
  //                     width: 20,
  //                   ),
  //                   SizedBox(
  //                     width: 5,
  //                   ),
  //                   Text('Delete',style:  TextStyle(
  //                       fontFamily: 'Cairo-Bold',
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: 14,
  //                       color: Color(0xff383C59))),
  //                 ],
  //               ),
  //             ),
  //           ),
  //
  //         ];
  //       },
  //       onSelected: (String value) => actionPopUpItemSelected(value,context),
  //     ),
  //   ),
  // ),
  _buildOurCarsCategory() {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              height: 250,
              padding:  EdgeInsets.all(17),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows:  [
                  // BoxShadow(
                  //     color: Color(0xffE7EAFF), //New
                  //     blurRadius: 25.0,
                  //     offset: Offset(0, -10))
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'From: ',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 15,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w700,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: ' 17 El Gomhorya st, Assuit',
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
                      Padding(
                        padding: EdgeInsets.only(left: 40.0),
                        child: Text(
                          '  Sep 14 , 2023 - 5:00 Am',
                          style: TextStyle(
                            color: Color(0xff595959),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'To: ',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w700,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: '       17 El Gomhorya st, Assuit',
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
                      Padding(
                        padding: EdgeInsets.only(left: 35.0),
                        child: Text(
                          '  Sep 14 , 2023 - 5:00 Am',
                          style: TextStyle(
                            color: Color(0xff595959),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // SizedBox(height: 20),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Ellipse 2.png',
                            height: 60,
                            width: 60,
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Khaled ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  height: 1.60,
                                ),
                              ),
                              Text(
                                '0112394862',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.60,
                                ),
                              ),
                              Text(
                                'Assuit , Egypt',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.60,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Duration:',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w700,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: '  4 Days',
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
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Rounded Trip ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 38.0),
                        child: Material(
                          color: Colors.white,
                          elevation: 5,
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              child: Image.asset('assets/images/call12.png',
                                  height: 25, width: 25),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:  EdgeInsets.only(bottom: 8.0),
                          child: Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'See Details',
                                  style: TextStyle(
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
                        ),
                      ),
                      // Padding(
                      //   padding:  EdgeInsets.only(top: 35.0),
                      //   child: DarkButton(
                      //     txt: 'Accept',
                      //     onPress: () => Navigator.push(context,
                      //         MaterialPageRoute(builder: (context) => TripDetailsScreen())),
                      //     buttonWidth: 130,
                      //     buttonHeight: 45,
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 17,
          );
        },
        itemCount: 15);
  }
// Padding(
//   padding:  EdgeInsets.symmetric(horizontal: 18.0),
//   child: Text(
//     "Booking ",
//     style: TextStyle(
//       color: Color(0xff383C59),
//       fontSize: 20,
//       fontFamily: 'Roboto-Regular',
//       fontWeight: FontWeight.w600,
//       height: 1.60,
//     ),
//   ),
// ),
//  SizedBox(
//   height: 15,
// ),
// _buildOurCarsCategory(),
}
