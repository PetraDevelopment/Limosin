import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../components/custom_appbar.dart';
import '../../components/dark_button.dart';
import '../../helper/image_helper.dart';
import '../add_successfully_screen.dart';
import 'add_car_controller.dart';

class AddCarDetailsScreen extends StatelessWidget {
  AddCarDetailsScreen({super.key});

  final height = 100.0;
  int count = 1;
  final imageHelper = ImageHelper();

  @override
  Widget build(BuildContext context) {
    int selectedOption = 1;
    String dropdownValue = 'Type';

    return GetBuilder<AddCarController>(
      init: AddCarController(),
      builder: (controller) {
        return
          Scaffold(
          appBar: Custom()
              .customAppBar(context, 'Car Details', Icons.notifications),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xffD9D9D9), //<-- SEE HERE
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                          BorderSide(color: Color(0xffD9D9D9), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                          BorderSide(color: Color(0xffD9D9D9), width: 0),
                        ),
                        filled: true,
                        // fillColor: Colors.white,
                      ),
                      dropdownColor: Colors.white,
                      value: dropdownValue,
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 35,
                      ),
                      onChanged: (String? newValue) {
                        print("object");
                        // setState(() {
                        //   dropdownValue = newValue!;
                        // });
                      },
                      items: <String>['Type', 'Type1', 'Type2', 'Type3']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: controller.colorController,
                    cursorColor: Color(0xff383C59),
                    style: const TextStyle(color: Color(0xff383C59)),

                    decoration: InputDecoration(
                      labelText: 'Color',
                      // errorText: 'Pick up location is required',
                      // suffixIcon: Icon(
                      //   Icons.error,color: Colors.red,
                      // ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff383C59)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff79747E)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff383C59)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff383C59)),
                      ),
                    ),
                    // decoration: InputDecoration(
                    //   labelText: 'Label text',
                    //
                    //
                    //
                    // border: OutlineInputBorder(),
                    //
                    //
                    // ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: controller.modelController,
                    cursorColor: Color(0xff383C59),
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Color(0xff383C59)),
                    decoration: InputDecoration(
                      labelText: 'Model',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff383C59)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff79747E)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff383C59)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff383C59)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: controller.numberController,
                    cursorColor: Color(0xff383C59),
                    style: const TextStyle(color: Color(0xff383C59)),
                    decoration: InputDecoration(
                      labelText: 'Number',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff79747E)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff383C59)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff383C59)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    // <--- SizedBox
                    height: height,
                    child: TextFormField(
                        controller: controller.descriptionController,
                        cursorColor: Color(0xff383C59),
                        style: const TextStyle(color: Color(0xff383C59)),
                        maxLines: height ~/ 20,
                        // <--- maxLines
                        decoration: const InputDecoration(
                          hintText: 'Description',
                          hintStyle: TextStyle(
                            color: Color(0xFF49454F),
                            fontSize: 16,
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            letterSpacing: 0.50,
                          ),
                          enabledBorder: OutlineInputBorder(
                            //Outline border type for TextFeild
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                            BorderSide(width: 1, color: Color(0xff383C59)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                            BorderSide(width: 1, color: Color(0xff383C59)),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Number of\nPassengers",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Luggage Count",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Color(0xff49454F))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    controller.passengers_num =
                                        controller.passengers_num! + 1;
                                    controller.update();
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  )),
                              Container(
                                height: 50.0,
                                width: 1.5,
                                color: Color(0xff49454F),
                              ),
                              Text(
                                "${controller.passengers_num}",
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Container(
                                height: 50.0,
                                width: 1.5,
                                color: Color(0xff49454F),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.passengers_num =
                                      controller.passengers_num! - 1;
                                  if (controller.passengers_num! < 1) {
                                    controller.passengers_num = 1;
                                  }
                                  controller.update();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Icon(
                                    Icons.minimize,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Color(0xff49454F))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    controller.luggage_count =
                                        controller.luggage_count! + 1;
                                    controller.update();
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  )),
                              Container(
                                height: 50.0,
                                width: 1.5,
                                color: Color(0xff49454F),
                              ),
                              Text(
                                "${controller.luggage_count}",
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Container(
                                height: 50.0,
                                width: 1.5,
                                color: Color(0xff49454F),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.luggage_count =
                                      controller.luggage_count! - 1;
                                  if (controller.luggage_count! < 1) {
                                    controller.luggage_count = 1;
                                  }
                                  controller.update();
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 12.0),
                                  child: Icon(
                                    Icons.minimize,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () async {
                    final pickedFile = await imageHelper.pickImageFromGallery();

                    if (pickedFile.isNotEmpty) {
                      if (pickedFile.first != null) {
                        controller.imageCar = File(pickedFile.first.path);
                      } else {
                        print('No image selected.');
                      }
                    }
                    controller.update();
                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: controller.imageCar == null
                          ? Image.asset("assets/images/add an image.png",
                          height: 100, width: 100)
                          : Image.file(controller.imageCar!,
                          height: 100, width: 100)

                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Center(
                    child: DarkButton(
                      txt: 'Add',
                      onPress: () {
                        controller.fetchAddCar();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AddSuccessfullyScreen()));
                      },
                      buttonWidth: 180,
                      buttonHeight: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
