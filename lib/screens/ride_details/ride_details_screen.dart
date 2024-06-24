import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl/intl.dart';
import 'package:limousine/screens/ride_details/ride_details_controller.dart';
import 'package:limousine/screens/trip_booked_screen.dart';

import '../../components/custom_appbar.dart';
import '../../components/dark_button.dart';

class RideDetailsScreen extends StatelessWidget {
  const RideDetailsScreen({super.key});

  final height = 150.0;

  @override
  Widget build(BuildContext context) {

    return GetBuilder<RideDetailsController>(
      init: RideDetailsController(),
      builder: (controller) {
        return Scaffold(
          appBar: Custom()
              .customAppBar(context, 'Ride Details', Icons.notifications),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 15, top: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Align(
                            alignment: Alignment(-18.1, 0),
                            child: Text(
                              'Round Trip',
                              style: TextStyle(
                                color: Color(0xFF383C59),
                                fontSize: 15,
                                fontFamily: 'Roboto_Bold',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          leading: Radio(
                            value: 1,
                            groupValue: controller.selectedOption,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xff383C59)),
                            onChanged: (value) {
                              controller.selectedOption = value!;
                              controller.update();
                            },
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: ListTile(
                          title: Align(
                            alignment: Alignment(-3.1, 0),
                            child: const Text(
                              'One Way',
                              style: TextStyle(
                                color: Color(0xFF383C59),
                                fontSize: 15,
                                fontFamily: 'Roboto_Bold',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          leading: Radio(
                            value: 2,
                            groupValue: controller.selectedOption,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xff383C59)),
                            onChanged: (value) {
                              controller.selectedOption = value!;
                              controller.update();
                            },
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: controller.pickuplocationController,
                    cursorColor: Color(0xff383C59),
                    style: const TextStyle(color: Color(0xff383C59)),
                    decoration: InputDecoration(
                      labelText: 'Pick up location',
                      labelStyle: TextStyle(
                        color: Color(0xff383C59),
                        fontSize: 16,
                        fontFamily: 'Roboto-Regular',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      ),
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
                    controller: controller.dropofflocationController,
                    cursorColor: Color(0xff383C59),
                    style: const TextStyle(color: Color(0xff383C59)),
                    decoration: InputDecoration(
                      labelText: 'Drop off location',
                      labelStyle: TextStyle(
                        color: Color(0xff383C59),
                        fontSize: 16,
                        fontFamily: 'Roboto-Regular',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
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


            controller.selectedOption==1?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: controller.pickupdateController,
                              style: const TextStyle(color: Color(0xff383C59)),
                              cursorColor: Color(0xff383C59),
                              decoration: InputDecoration(
                                labelText: 'Pick-Up Date',
                                labelStyle: TextStyle(
                                  color: Color(0xff383C59),
                                  fontSize: 16,
                                  fontFamily: 'Roboto-Regular',
                                  fontWeight: FontWeight.w400,
                                  height: 1.60,
                                ),
                                suffixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Color(0xff383C59),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff79747E)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff383C59)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff383C59)),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                  builder:
                                      (BuildContext context, Widget? child) {
                                    return Theme(
                                      data: ThemeData.light().copyWith(
                                        colorScheme: ColorScheme.light(
                                          primary: Color(0xff383C59),
                                          onPrimary: Colors.white,
                                        ),
                                        textTheme: TextTheme(
                                          subtitle1: TextStyle(
                                            color: Colors
                                                .black, // Change the text color
                                          ),
                                        ),
                                      ),
                                      child: child!,
                                    );
                                  },
                                );

                                if (pickedDate != null) {
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  print(formattedDate);
                                  controller.pickupdateController.text =
                                      formattedDate.toString();
                                } else {
                                  print("Date is not selected");
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: controller.returndateController,
                              cursorColor: Color(0xff383C59),
                              style: const TextStyle(color: Color(0xff383C59)),
                              decoration: InputDecoration(
                                labelText: 'Return Date',
                                labelStyle: TextStyle(
                                  color: Color(0xff383C59),
                                  fontSize: 16,
                                  fontFamily: 'Roboto-Regular',
                                  fontWeight: FontWeight.w400,
                                  height: 1.60,
                                ),
                                suffixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Color(0xff383C59),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff79747E)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff383C59)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff383C59)),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                  builder:
                                      (BuildContext context, Widget? child) {
                                    return Theme(
                                      data: ThemeData.light().copyWith(
                                        // Change the color of the picker
                                        colorScheme: ColorScheme.light(
                                          primary: Color(0xff383C59),
                                          onPrimary: Colors
                                              .white, // Change the text color
                                        ),
                                        textTheme: TextTheme(
                                          subtitle1: TextStyle(
                                            color: Colors
                                                .black, // Change the text color
                                          ),
                                        ),
                                      ),
                                      child: child!,
                                    );
                                  },
                                );
                                if (pickedDate != null) {
                                  String formattedDate =
                                      // DateFormat.EEEE().format(DateTime.now());
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  print(formattedDate + "hhhh");
                                  controller.returndateController.text =
                                      formattedDate.toString();
                                } else {
                                  print("Date is not selected");
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                      flex: 1,
                    ),
                  ],
                ): Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: [
                  TextFormField(
                    controller: controller.pickupdateController,
                    style: const TextStyle(color: Color(0xff383C59)),
                    cursorColor: Color(0xff383C59),
                    decoration: InputDecoration(
                      labelText: 'Pick-Up Date',
                      labelStyle: TextStyle(
                        color: Color(0xff383C59),
                        fontSize: 16,
                        fontFamily: 'Roboto-Regular',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      ),
                      suffixIcon: Icon(
                        Icons.calendar_today,
                        color: Color(0xff383C59),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            width: 1, color: Color(0xff79747E)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            width: 1, color: Color(0xff383C59)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            width: 1, color: Color(0xff383C59)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                        builder:
                            (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.light().copyWith(
                              colorScheme: ColorScheme.light(
                                primary: Color(0xff383C59),
                                onPrimary: Colors.white,
                              ),
                              textTheme: TextTheme(
                                subtitle1: TextStyle(
                                  color: Colors
                                      .black, // Change the text color
                                ),
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );

                      if (pickedDate != null) {
                        String formattedDate =
                        DateFormat('yyyy-MM-dd')
                            .format(pickedDate);
                        print(formattedDate);
                        controller.pickupdateController.text =
                            formattedDate.toString();
                      } else {
                        print("Date is not selected");
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
                controller.selectedOption==1?
                 SizedBox(
                  height: 20,
                ):Container(),
                controller.selectedOption==1?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(children: [
                          TextFormField(
                            controller: controller.pickuptimeController,
                            cursorColor: Color(0xff383C59),
                            style: const TextStyle(color: Color(0xff383C59)),
                            decoration: InputDecoration(
                              labelText: 'Pick-Up Time',
                              labelStyle: TextStyle(
                                color: Color(0xff383C59),
                                fontSize: 16,
                                fontFamily: 'Roboto-Regular',
                                fontWeight: FontWeight.w400,
                                height: 1.60,
                              ),
                              suffixIcon: Icon(
                                Icons.access_time,
                                color: Color(0xff383C59),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xff79747E)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xff383C59)),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xff383C59)),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              TimeOfDay? pickedTime = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay(hour: 7, minute: 15),
                                initialEntryMode: TimePickerEntryMode.input,
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData.light().copyWith(
                                      // Change the color of the picker
                                      colorScheme: ColorScheme.light(
                                        primary: Color(0xff383C59),
                                        // Change the primary color
                                        onPrimary: Colors
                                            .white, // Change the text color
                                      ),
                                      textTheme: TextTheme(
                                        subtitle1: TextStyle(
                                          color: Colors
                                              .black, // Change the text color
                                        ),
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );

                              if (pickedTime != null) {
                                print("pickedTime: $pickedTime");

                                DateTime now = DateTime.now();
                                DateTime parsedTime = DateTime(
                                    now.year,
                                    now.month,
                                    now.day,
                                    pickedTime.hour,
                                    pickedTime.minute);

                                String formattedTime =
                                    DateFormat('HH:mm:ss').format(parsedTime);
                                controller.pickuptimeController.text =
                                    formattedTime.toString();

                                print("formattedTime: $formattedTime");
                              } else {
                                print("Time is not selected");
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60,
                            ),
                          ),
                        ]),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(children: [
                          TextFormField(
                            controller: controller.returntimeController,
                            cursorColor: Color(0xff383C59),
                            style: const TextStyle(color: Color(0xff383C59)),
                            decoration: InputDecoration(
                              labelText: 'Return Time',
                              labelStyle: TextStyle(
                                color: Color(0xff383C59),
                                fontSize: 16,
                                fontFamily: 'Roboto-Regular',
                                fontWeight: FontWeight.w400,
                                height: 1.60,
                              ),
                              suffixIcon: Icon(
                                Icons.access_time,
                                color: Color(0xff383C59),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xff79747E)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xff383C59)),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xff383C59)),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              TimeOfDay? pickedTime = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay(hour: 7, minute: 15),
                                initialEntryMode: TimePickerEntryMode.input,
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData.light().copyWith(
                                      // Change the color of the picker
                                      colorScheme: ColorScheme.light(
                                        primary: Color(0xff383C59),
                                        // Change the primary color
                                        onPrimary: Colors
                                            .white, // Change the text color
                                      ),
                                      textTheme: TextTheme(
                                        subtitle1: TextStyle(
                                          color: Colors
                                              .black, // Change the text color
                                        ),
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );

                              if (pickedTime != null) {
                                print("pickedTime: $pickedTime");

                                // Convert TimeOfDay to DateTime
                                DateTime now = DateTime.now();
                                DateTime parsedTime = DateTime(
                                    now.year,
                                    now.month,
                                    now.day,
                                    pickedTime.hour,
                                    pickedTime.minute);

                                // Format the DateTime
                                String formattedTime =
                                    DateFormat('HH:mm:ss').format(parsedTime);
                                controller.returntimeController.text =
                                    formattedTime.toString();
                                // controller.update();

                                print("formattedTime: $formattedTime");
                              } else {
                                print("Time is not selected");
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60,
                            ),
                          ),
                        ]),
                      ),
                      flex: 1,
                    ),
                  ],
                ):Container(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text(
                          "Number of\nPassengers",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Luggage Count",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        flex: 1,
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
                                    controller.luggage_count = controller.luggage_count! + 1;
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
                                  controller.luggage_count = controller.luggage_count! - 1;
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
                const SizedBox(
                  height: 50,
                ),

                Center(
                  child: DarkButton(
                    txt: 'Select Vehicle',
                    onPress: () {
controller.fetchAvailableCar();
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => TripBookedScreen()));
                    },
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
}
