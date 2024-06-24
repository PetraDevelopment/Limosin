

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:limousine/screens/cars_screen.dart';
import 'package:limousine/screens/cars_see_more_screen.dart';
import 'package:limousine/screens/profile/profile_screen.dart';
import 'package:limousine/screens/ride_details/ride_details_screen.dart';
import '../../components/main_drawer.dart';
import '../../utils/constants.dart';
import '../add_car/add_car_details_screen.dart';

import '../car_details/cars_details_screen.dart';
import '../notification_screen.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
   final GlobalKey<ScaffoldState> _key = GlobalKey();

  final CarouselController _controller1 = CarouselController();


  Map whatIsNewItems = {
    'New Mitsubishi Outlander': "assets/images/Rectangle 20.png",
    'Family  Summer Trips Offers': "assets/images/Rectangle 20.png",
    'New Mitsubishi Outlander2': "assets/images/Rectangle 20.png",
    'Family  Summer Trips Offers2': "assets/images/Rectangle 20.png",
    'Family  Summer Trips Offers3': "assets/images/Rectangle 20.png",
  };
  Map onlyWithUsItems = {
    'Safe\nTrip': 'assets/images/Rectangle 14.png',
    'Professional\nDrivers': 'assets/images/Rectangle 15.png',
    'Comfortable\nseats': 'assets/images/Rectangle 16.png',
    'Suitable\nRoads': 'assets/images/Rectangle 17.png',
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: exiteApp,

      child: Scaffold(
         key:_key ,
        appBar: AppBar(
          toolbarHeight: 75,
          automaticallyImplyLeading: false,
          leading:
            GestureDetector(
              onTap: (){
                _key.currentState!.openDrawer();
              },
                child: Image.asset('assets/images/Vector2.png')),
          title: Text(
            'Home',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.w400,
              height: 1.60,
            ),
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context ,
                        MaterialPageRoute(builder: (context) =>  const NotificationScreen(), maintainState: false));
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ),
          ],
          centerTitle: true,
          backgroundColor: const Color(0xFF383C59),
        ),

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
                              Image.asset('assets/images/hhome.png',
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
                              Image.asset('assets/images/car.png',
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBookOrAddCarCategory(context),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only( left: 25.0,right: 25),
                child: const Text(
                  'What’s new ?',
                  style: TextStyle(
                    color: Color(0xFF383C59),
                    fontSize: 24,
                    fontFamily: 'Roboto-Bold',
                    fontWeight: FontWeight.w600,
                    height: 1.33,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(height: 156, child: _buildWhatIsNewCategory()),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only( left: 25.0,right: 25),
                child: const Text(
                  'Only with us....',
                  style: TextStyle(
                    color: Color(0xFF383C59),
                    fontSize: 24,
                    fontFamily: 'Roboto-Bold',
                    fontWeight: FontWeight.w600,
                    height: 1.33,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildOnlyWithUsCategory(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only( left: 25.0,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
                      child: const Text(
                        'Our Cars',
                        style: TextStyle(
                          color: Color(0xFF383C59),
                          fontSize: 24,
                          fontFamily: 'Roboto-Bold',
                          fontWeight: FontWeight.w600,
                          height: 1.33,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context ,
                              MaterialPageRoute(builder: (context) =>   CarsSeeMoreScreen(), maintainState: false));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'See More',
                                style: TextStyle(
                                  color: Color(0xff49454F),
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 1.60,

                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,size: 15,
                                color: Color(0xff49454F),
                              )
                              // Image.asset('assets/images/icon.png',height: 15,width: 15,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
             _buildOurCarsCategory(),
            ],
          ),
        ),
      ),
    );
  }

  DateTime BackPressTime = DateTime.now();
  Future<bool> exiteApp() {
    // print("exite app");
    DateTime now = DateTime.now();
    if (now.difference(BackPressTime) < const Duration(seconds: 2)) {
      return Future(() => true);
    } else {
      BackPressTime = DateTime.now();
      Fluttertoast.showToast(msg: "Press again to exit");

      return Future(() => false);
    }
  }
  _buildWhatIsNewCategory() {
    return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Container(
              width: 242,
              height: 156,
              padding: const EdgeInsets.only(top: 117),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(whatIsNewItems.values.toList()[index]),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Container(
                width: 242,
                height: 39,
                decoration: const ShapeDecoration(
                  color: Color(0x93383C59),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            whatIsNewItems.keys.toList()[index].toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w700,
                              height: 1.71,
                              letterSpacing: 0.50,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 1,
          );
        },
        itemCount: 5);
  }

  _buildBookOrAddCarCategory(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: 25.0,right: 25,top: 35),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 157,
            padding: const EdgeInsets.only(top: 117),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/Rectangle 40.png"),
                fit: BoxFit.fill,
              ),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              shadows: const [
                BoxShadow(
                  color: Color(0xA0383C59),
                  blurRadius: 7,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Container(
              width: 140,
              height: 40,
              decoration: const ShapeDecoration(
                color: Color(0xFF383C59),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context ,
                            MaterialPageRoute(builder: (context) =>  const RideDetailsScreen(), maintainState: false));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Book Your Trip',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w700,
                              height: 1.71,
                              letterSpacing: 0.50,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: 150,
            height: 157,
            padding: const EdgeInsets.only(top: 117),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/Rectangle 20.png"),
                fit: BoxFit.fill,
              ),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              shadows: const [
                BoxShadow(
                  color: Color(0xA0383C59),
                  blurRadius: 7,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Container(
              width: 140,
              height: 40,
              decoration: const ShapeDecoration(
                color: Color(0xFF383C59),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context ,
                            MaterialPageRoute(builder: (context) =>   AddCarDetailsScreen(), maintainState: false));

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Add New Car',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w700,
                              height: 1.71,
                              letterSpacing: 0.50,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildOnlyWithUsCategory() {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _controller1,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            return Container(
              width: 233,
              height: 280.59,
              padding: const EdgeInsets.all(17),
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    onlyWithUsItems.values.toList()[index],
                  ),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  onlyWithUsItems.keys.toList()[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Roboto-Medium',
                    fontWeight: FontWeight.w400,
                    height: 1.04,
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 280,

            aspectRatio: 16 / 9,
            viewportFraction: 0.6,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.5,
            onPageChanged: (index, reason) {
              print(index);
              print(reason);

            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(
          height: 20,
        ),

      ],
    );
  }

  _buildOurCarsCategory() {return  GetBuilder<HomeController>(
      init: HomeController(),
    builder: (controller) {
    return
    ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only( left: 25.0,right: 25),
            child: Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.all(17),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${controller.Home.value.data?[index].ctname}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(CarsDetailsScreen(),arguments: [controller.Home.value.data?[index].cId]);

                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 38.0),
                          child: Row(
                            children: [
                              Text(
                                'More details',
                                style: TextStyle(
                                  color: Color(0xFF383C59),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 2.67,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Padding(
                                padding: EdgeInsets.only(top: 12.0),
                                child: Icon(  Icons.arrow_forward_ios,
                                  color: Color(0xff49454F),size: 15,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.network(apiBaseUrl+"/"+controller.Home.value.data![index].cImage!)
                  // Container(
                  //     height: 150,width: 180,
                  //     decoration:  BoxDecoration(
                  //   image: DecorationImage(
                  //     image: Image.network(apiBaseUrl+"/"+controller.Home.value.data?[index].cImage!),
                  //     fit: BoxFit.fill,
                  //   ),
                  //       // Image.network(apiBaseUrl+"/"+data[index].cImage!, height: 100, width: 150),
                  // ),),
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
        itemCount: controller.Home.value.data!.length);}
  );
  }
}
