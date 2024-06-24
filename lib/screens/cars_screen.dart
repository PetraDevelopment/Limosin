import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limousine/screens/profile/profile_screen.dart';
import 'package:limousine/screens/ride_details/ride_details_screen.dart';
import 'package:limousine/screens/trip_details_screen.dart';

import '../components/custom_appbar.dart';
import '../components/dark_button.dart';
import '../components/main_drawer.dart';
import 'change_password/change_password_screen.dart';
import 'home/home_screen.dart';
import 'notification_screen.dart';

class CarsScreen extends StatelessWidget {
  CarsScreen({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key:_key ,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add,size: 35,),
            onPressed: () {
              Navigator.push(
                  context ,
                  MaterialPageRoute(
                      builder: (context) =>  RideDetailsScreen(),
                      maintainState: false));
            },
            backgroundColor: const Color(0xff383C59)),
        drawer: const MainDrawer(),
        bottomNavigationBar: ClipRRect(
          child: BottomAppBar(

            color:  Colors.white,
            clipBehavior: Clip.antiAlias,
            shape: const CircularNotchedRectangle(),
            //shape of notch
            notchMargin: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context ,
                              MaterialPageRoute(
                                  builder: (context) =>  HomeScreen(),
                                  maintainState: false));
                        },
                        child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,
                            children: [
                              Image.asset('assets/images/home.png',
                                  height: 30, width: 30),
                              const Text("Home",
                                  style: TextStyle(
                                      color: Color(0xFF0f396a), fontSize: 15)),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context ,
                              MaterialPageRoute(
                                  builder: (context) =>  CarsScreen(),
                                  maintainState: false));
                        },
                        child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,
                            children: [
                              Image.asset('assets/images/car1.png',
                                  height: 30, width: 30),
                              const Text("Trips",
                                  style: TextStyle(
                                      color: Color(0xFF0f396a), fontSize: 15)),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: GestureDetector(
                        onTap: () { Navigator.push(
                            context ,
                            MaterialPageRoute(
                                builder: (context) =>  ProfileScreen(),
                                maintainState: false));},
                        child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,
                            children: [
                              Image.asset('assets/images/inactive profile.png',
                                  height: 30, width: 30),
                              const Text("Profile",
                                  style: TextStyle(
                                      color: Color(0xFF0f396a), fontSize: 15)),
                            ]),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          _key.currentState!.openDrawer();
                        },
                        child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,
                            children: [
                              Image.asset('assets/images/menu.png',
                                  height: 30, width: 30),
                              const Text("More",
                                  style: TextStyle(
                                      color: Color(0xFF0f396a), fontSize: 15)),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 75,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              )),
          title: Text(
            'Cars',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.w400,
              height: 1.60,
            ),
          ),
          bottom: PreferredSize(
            preferredSize:
            const TabBar(
              indicatorColor: Color(0xff383C59),
              labelColor: Color(0xff383C59),
              labelStyle: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w600,),
              unselectedLabelStyle: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w600,),
              indicatorSize: TabBarIndicatorSize.label,


              unselectedLabelColor:Color(0xff383C59),

              tabs: [
                Tab(

                  text: "All",
                ),
                Tab(

                  text: "Completed",
                ),

                Tab(

                  text: "Cancelled",
                ),
                Tab(

                  text: "Booked",
                )
              ],
            ).preferredSize,
            child: Material(
              color: Colors.white,
              child: const TabBar(
                indicatorColor: Color(0xff383C59),
                labelColor: Color(0xff383C59),
                labelStyle: TextStyle(fontSize: 13.0 ,fontWeight: FontWeight.w600,),
                unselectedLabelStyle: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600,),
                indicatorSize: TabBarIndicatorSize.label,


                unselectedLabelColor:Color(0xff383C59),

                tabs: [
                  Tab(

                    text: "All",
                  ),
                  Tab(

                    text: "Completed",
                  ),

                  Tab(

                    text: "Cancelled",
                  ),
                  Tab(

                    text: "Booked",
                  )
                ],
              ),
            ),
          ),

          actions: [
           IconButton(
                onPressed: () {
                  Navigator.push(
                      context ,
                      MaterialPageRoute(builder: (context) =>  const NotificationScreen(), maintainState: false));
                },
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
          ],
          centerTitle: true,
          backgroundColor: const Color(0xFF383C59),
        ),
        body:  TabBarView(
          children: [
            SingleChildScrollView(
              child:
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _buildOurCarsCategory(),
                  ],
                ),
        ),
           ),

            SingleChildScrollView(
              child:
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _buildOurCarsCategory(),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child:
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _buildOurCarsCategory(),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child:
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _buildOurCarsCategory(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildOurCarsCategory() {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 300,
            padding: const EdgeInsets.all(17),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                    color: Color(0x80e7eaff), //New
                    blurRadius: 25.0,
                    offset: Offset(0, -10))
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
                              fontWeight: FontWeight.w500,
                              height: 1.33,
                            ),
                          ),
                          TextSpan(
                            text: '17 El Gomhorya st, Assuit',
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
                        'Sep 14 , 2023 - 5:00 Am',
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
                              fontWeight: FontWeight.w500,
                              height: 1.33,
                            ),
                          ),
                          TextSpan(
                            text: '17 El Gomhorya st, Assuit',
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
                      padding: EdgeInsets.only(left: 23.0),
                      child: Text(
                        'Sep 14 , 2023 - 5:00 Am',
                        style: TextStyle(
                          color: Color(0xff595959),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.60,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Duration:',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontFamily: 'Roboto-Medium',
                              fontWeight: FontWeight.w500,
                              height: 1.33,
                            ),
                          ),
                          TextSpan(
                            text: '4 Days',
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
                    SizedBox(height: 15),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Status : ',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontFamily: 'Roboto-Medium',
                              fontWeight: FontWeight.w500,
                              height: 1.33,
                            ),
                          ),
                          TextSpan(
                            text: 'Booked',
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
                    SizedBox(height: 20),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pngwing 1.png',
                        height: 100, width: 100),
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
                    Text.rich(
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
                            text: 'White',
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
                    Text.rich(
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
                            text: '2378 ع ك ر',
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
                    Expanded(
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
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 35.0),
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
