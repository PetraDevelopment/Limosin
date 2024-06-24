import 'dart:io';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:limousine/screens/change_password/change_password_screen.dart';
import 'package:limousine/screens/on_boarding_screens/first_step_screen.dart';
import 'package:limousine/screens/profile/profile_controller.dart';

import '../../components/custom_appbar.dart';
import '../../components/main_drawer.dart';
import '../../helper/image_helper.dart';
import '../../utils/constants.dart';
import '../cars_screen.dart';
import '../home/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();


  final imageHelper = ImageHelper();





  Future getImage() async {}

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        return Scaffold(
            key: _key,
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            appBar: Custom().customAppBar(context, 'Profile'),
            drawer: const MainDrawer(),
            bottomNavigationBar: ClipRRect(
              child: BottomAppBar(
                color: Colors.white,
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
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
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
                                          color: Color(0xFF0f396a),
                                          fontSize: 15)),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CarsScreen(),
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
                                          color: Color(0xFF0f396a),
                                          fontSize: 15)),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen(),
                                      maintainState: false));
                            },
                            child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                direction: Axis.vertical,
                                children: [
                                  Image.asset('assets/images/profile.png',
                                      height: 30, width: 30),
                                  const Text("Profile",
                                      style: TextStyle(
                                          color: Color(0xFF0f396a),
                                          fontSize: 15)),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
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
                                          color: Color(0xFF0f396a),
                                          fontSize: 15)),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: Container(
              color: Color(0xffFAFAFF),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate([
                      SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, bottom: 8.0),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color: const Color(
                                            0xFF383C59,
                                          ),
                                          width: 3),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: ClipRRect(
                                        // clipBehavior: Clip.hardEdge,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100.0)),
                                        child: userData.read("profilePhoto") is String
                                            ? userData.read("profilePhoto")!="null"?Image.network(apiBaseUrl+"/"+userData.read("profilePhoto"),
                                                height: 20, width: 30):Image.asset("assets/images/Ellipse 2.png",
                                            height: 20, width: 30)
                                            : Image.file(userData.read("profilePhoto"),
                                            height: 20, width: 30)),
                                  ),
                                  Positioned(
                                    bottom: -40,
                                    right: -50,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 50.0, horizontal: 50),
                                      child: SizedBox(
                                        height: 40.0,
                                        width: 40.0,
                                        child: FloatingActionButton(
                                            backgroundColor: const Color(
                                              0xFF383C59,
                                            ),
                                            onPressed: () async {
                                              final pickedFile =
                                                  await imageHelper
                                                      .pickImageFromGallery();

                                              if (pickedFile.isNotEmpty) {
                                                if (pickedFile.first != null) {
                                                  controller.image_ = File(
                                                      pickedFile.first.path);
                                                } else {
                                                  print('No image selected.');
                                                }
                                              }
                                              controller
                                                  .fetchProfileImageUpdate();
                                            
                                            },
                                            child: const Icon(
                                              Icons.camera_alt_outlined,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: TextFormField(
                              // controller:userData.read("first_name") ,
                              
                              cursorColor: Color(0xff383C59),
                              initialValue: userData.read("first_name") ,
                              style: const TextStyle(color: Color(0xff383C59)),
                              decoration: InputDecoration(
                                labelText: 'First Name',
                                labelStyle: TextStyle(
                                  color: Color(0xff383C59),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: TextFormField(
                              // controller: userData.read("last_name"),
                              cursorColor: Color(0xff383C59),
                              initialValue: userData.read("last_name"),
                              style: TextStyle(color: const Color(0xff383C59)),
                              decoration: InputDecoration(
                                labelText: 'Last Name',
                                labelStyle: TextStyle(
                                  color: Color(0xff383C59),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: TextFormField(
                              // controller:userData.read("email") ,
                              cursorColor: Color(0xff383C59),
                              initialValue:userData.read("email"),
                              style: TextStyle(color: const Color(0xff383C59)),
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Color(0xff383C59),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: TextFormField(
                             // // controller:userData.read("phone") ,
                              cursorColor: Color(0xff383C59),
                              initialValue:userData.read("phone") ,
                              style: TextStyle(color: const Color(0xff383C59)),
                              decoration: InputDecoration(
                                labelText: 'Number',
                                labelStyle: TextStyle(
                                  color: Color(0xff383C59),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff383C59)),
                                ),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChangePasswordScreen(),
                                        maintainState: false));
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Image.asset(
                                            'assets/images/password.png',
                                            height: 25,
                                            width: 25),
                                      ),
                                      const Text(
                                        "Change Password",
                                        style: TextStyle(
                                          color: Color(0xff383C59),
                                          fontSize: 15,
                                          fontFamily: 'Roboto-Regular',
                                          fontWeight: FontWeight.w700,
                                          height: 1.60,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: Image.asset('assets/images/back.png',
                                        height: 22, width: 22),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Image.asset(
                                        'assets/images/Delete.png',
                                        height: 20,
                                        width: 20),
                                  ),
                                  GestureDetector(
                                    onTap: () async {

                                      return showDialog(
                                        context: context,
                                        builder: (ctx) => AlertDialog(
                                          title: GestureDetector(
                                            onTap: (){
                                              Navigator.of(context).pop();
                                            },
                                            child: Align(
                                                alignment:
                                                    AlignmentDirectional.topEnd,
                                                child: Image.asset(
                                                  'assets/images/icon_logout.png',
                                                  height: 20,
                                                  width: 20,
                                                )),
                                          ),
                                          content: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Text(
                                              "Are you sure you want to delete your\naccount ?",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                height: 1.60,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          actions: <Widget>[
                                            Row(
                                              children: [
                                                Expanded(
                                                    child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 8.0),
                                                  child: ElevatedButton(
                                                    onPressed: () async {
                                                      controller
                                                          .fetchProfileDeleteAccount();
                                                    },
                                                    child: Text("Delete"),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Color(
                                                                    0xff259A3A),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            )),
                                                  ),
                                                )),
                                                Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 8.0),
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  Color(
                                                                      0xffF13939),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              )),
                                                      onPressed: () async {
                                                        Navigator.of(context).pop();
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
                                    },
                                    child: Text(
                                      "Delete account",
                                      style: TextStyle(
                                        color: Color(0xFFF13939),
                                        fontSize: 15,
                                        fontFamily: 'Roboto-Regular',
                                        fontWeight: FontWeight.w700,
                                        height: 1.60,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                    ]),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
