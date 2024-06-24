import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            _mapController = controller;
          },
          initialCameraPosition: CameraPosition(
            target: LatLng(37.422, -122.084), // Set initial map location
            zoom: 10.0, // Set initial zoom level
          ),
        ),
        Positioned(
          top:20,
          left: 10,
          child:Transform.scale(
          scale: .8,
    child:FloatingActionButton(

        child: Image.asset(
          'assets/images/Vector6.png',
          height: 25,
          width: 25,
        ),
        onPressed: () {},
        backgroundColor: Colors.white),
          ) ,
    ),
        Positioned(
            top: 50,
            left: 12,
            child: Align(
              alignment: AlignmentDirectional.topCenter,
              child: Container(
                width: 360,
                height: 100,
                // color: Colors.green,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child:

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Transform.scale(
                            scale: 1.2,

                              child: FloatingActionButton(

                                  child: Image.asset(
                                    'assets/images/icon88.png',
                                    height: 28,
                                    width: 28,
                                  ),
                                  onPressed: () {},
                                  backgroundColor: Color(0xffF1F3FF)),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Your trip has ended\nyou’re arrived',textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 1.60,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0,right: 18),
                            child: Align(
                                alignment: AlignmentDirectional.topEnd,
                                child: Image.asset(
                                  'assets/images/icon_logout.png',
                                  height: 20,
                                  width: 20,
                                )),
                          ),
                        ],
                      ),
                ),
              ),
            )),












//         Positioned(
//             top: 80,
//             left: 12,
//             child: Align(
//               alignment: AlignmentDirectional.topCenter,
//               child: Container(
//                 width: 360,
//                 height: 160,
//                 // color: Colors.green,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(15)),
//                 ),
//
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 8.0),
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Row(
//                         children: [
//                           Image.asset('assets/images/Vector22.png',
//                               height: 28, width: 28),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text.rich(
//                             TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: 'Pick up location',
//                                   style: TextStyle(
//                                     color: Color(0xff79747E),
//                                     fontSize: 12,
//                                     fontFamily: 'Roboto-Medium',
//                                     fontWeight: FontWeight.w400,
//                                     height: 1.33,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 12.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Image.asset('assets/images/Line44.png'),
//                             Expanded(
//                               child: Align(
//                                 alignment: AlignmentDirectional.topStart,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(left: 18.0),
//                                   child: Column(
//                                     children: [
//                                       Text(
//                                         '17 El Gomhorya st, Assuit',
//                                         style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 12,
//                                           fontFamily: 'Roboto',
//                                           fontWeight: FontWeight.w400,
//                                           height: 1.60,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: () {},
//                               child: Expanded(
//                                 child: Align(
//                                   alignment: AlignmentDirectional.topEnd,
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 5.0, right: 20),
//                                     child: FloatingActionButton(
// //Vector5.png
//                                         child: Image.asset(
//                                           'assets/images/Vector5.png',
//                                           height: 25,
//                                           width: 25,
//                                         ),
//                                         onPressed: () {},
//                                         backgroundColor: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.asset('assets/images/Vector22.png',
//                               height: 28, width: 28),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Drop off location',
//                                 style: TextStyle(
//                                   color: Color(0xff79747E),
//                                   fontSize: 12,
//                                   fontFamily: 'Roboto',
//                                   fontWeight: FontWeight.w500,
//                                   height: 1.60,
//                                 ),
//                               ),
//                               Text(
//                                 '17 El Gomhorya st, Assuit',
//                                 style: TextStyle(
//                                   color: Color(0xff000000),
//                                   fontSize: 12,
//                                   fontFamily: 'Roboto',
//                                   fontWeight: FontWeight.w400,
//                                   height: 1.60,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       // SizedBox(
//                       //   height: 15,
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//             )),
        Positioned(
          bottom:20,
          right: 10,
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              width: 360,
              height: 120,
              // color: Colors.green,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [

                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Stack(
                        children:[
                          Positioned(
top: 5,
                          left: 50,
                            child: Image.asset(
                              'assets/images/pngwing 3.png',
                              height: 100,
                              width: 120,
                            ),
                          ),
                          Row(
                          children: [

                            Image.asset(
                              'assets/images/Ellipse 2.png',
                              height: 80,
                              width: 80,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 58.0,left: 8),
                              child: Text(
                                'Ahmed Khaled ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  height: 1.60,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Align(
                                  alignment: AlignmentDirectional.topEnd,
                                  child: Material(
                                    color: Colors.white,
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(50),
                                    child: InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(50),
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        alignment: Alignment.center,
                                        child: Image.asset('assets/images/call12.png',
                                            height: 25, width: 30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),]

                      ),
                    ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
