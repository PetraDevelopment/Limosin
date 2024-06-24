import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limousine/models/available_car_model.dart';
import 'package:limousine/screens/trip_booked_screen.dart';
import 'package:limousine/screens/trip_canceled_screen.dart';

import '../components/custom_appbar.dart';
import '../components/dark_button.dart';
import 'available_car/available_cars_screen.dart';
import 'cars_screen.dart';
import 'cars_see_more_screen.dart';

class TripDetailsScreen extends StatelessWidget {
  Datum data=Datum ();
  TripDetailsScreen(this. data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          Custom().customAppBar(context, 'Trip Details', Icons.notifications),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildOurCarsCategory(context),
              SizedBox(
                height: 20,
              ),
              Text(
                'Trip Information ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 1.60,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset('assets/images/icon11.png'
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Trip Duration : ',
                          style: TextStyle(
                            color: Color(0xff79747E),
                            fontSize: 12,
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
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Booked',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w500,
                                height: 1.33,
                              ),
                            ),

                            WidgetSpan(child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(Icons.done_rounded,size: 20,),
                            )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Vector22.png',
                      height: 28, width: 28),
                  SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Pick up location',
                          style: TextStyle(
                            color: Color(0xff79747E),
                            fontSize: 14,
                            fontFamily: 'Roboto-Medium',
                            fontWeight: FontWeight.w500,
                            height: 1.33,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset('assets/images/Line 4.png',height: 80,),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            children: [
                              Text(
                                ' 17 El Gomhorya st, Assuit',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  height: 1.60,
                                ),
                              ),
                              Text(
                                'Sep 14 , 2023 - 5:00 Am',
                                style: TextStyle(
                                  color: Color(0xff595959),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.60,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).copyWith().size.height * 0.75,
                              child: Center(
                                child: _buildOurCars(context),
                              ),
                            );
                          },
                        );
                      },
                      child: Expanded(
                        child: Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.asset('assets/images/icon112.png'

                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/Vector22.png',
                      height: 28, width: 28),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Return location',
                        style: TextStyle(
                          color: Color(0xff79747E),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                        ),
                      ),
                      Text(
                        '17 El Gomhorya st, Assuit',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 1.60,
                        ),
                      ),
                      Text(
                        'Sep 14 , 2023 - 5:00 Am',
                        style: TextStyle(
                          color: Color(0xff595959),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.60,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'See Directions',
                    style: TextStyle(
                      color: Color(0xff49454F),
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.60,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xff49454F),
                  )
                  // Image.asset('assets/images/icon.png',height: 15,width: 15,)
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    'assets/images/Ellipse 2.png',
                    height: 80,
                    width: 80,
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
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 1.60,
                        ),
                      ),
                      Text(
                        '0112394862',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.60,
                        ),
                      ),
                      Text(
                        'Assuit , Egypt',
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
                      child: Material(
                        color: Colors.white,
                        elevation: 5,
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            width: 70,
                            height: 70,
                            alignment: Alignment.center,
                            child: Image.asset('assets/images/call12.png',
                                height: 30, width: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: Center(
                  child: DarkButton(
                    txt: 'Book',
                    onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TripCanseledScreen())),
                    buttonWidth: 200,
                    buttonHeight: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildOurCarsCategory(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
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
              blurRadius: 25.0,
              offset: Offset(0, -10))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/pngwing 3.png',
              height: 120, width: 180),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: Text(
                  'Toyota Cary  ',
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
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
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
                          text: '${data.cColor}',
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
              ),
              SizedBox(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
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
                          text: '${data.cModel}',
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
              ),
              SizedBox(
                height: 30,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 8.0),
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
                          text: ' ${data.cNumber} ',
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
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildOurCars(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                cursorColor:  Color(0xff383C59),
                style: const TextStyle(color: Color(0xff383C59)),

                decoration: InputDecoration(
                  labelText: 'Pick up location',
                  labelStyle: TextStyle(
                    color: Color(0xff383C59),

                  ),
                  // errorText: 'Pick up location is required',
                  // suffixIcon: Icon(
                  //   Icons.error,color: Colors.red,
                  // ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 1, color: Color(0xff383C59)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 1, color: Color(0xff79747E)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 1, color: Color(0xff383C59)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 1, color: Color(0xff383C59)),
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
                cursorColor:  Color(0xff383C59),
                style: const TextStyle(color: Color(0xff383C59)),
                decoration: InputDecoration(
                  labelText: 'Drop off location',
                  labelStyle: TextStyle(
                    color: Color(0xff383C59),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 1, color: Color(0xff79747E)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 1, color: Color(0xff383C59)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 1, color: Color(0xff383C59)),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      cursorColor:  Color(0xff383C59),
                      style: const TextStyle(color: Color(0xff383C59)),
                      decoration: InputDecoration(
                        labelText: 'Pick-Up Date',
                        labelStyle: TextStyle(
                          color: Color(0xff383C59),

                        ),
                        suffixIcon: Icon(
                          Icons.calendar_today,color:Color(0xff383C59),
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
                  flex: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      cursorColor:  Color(0xff383C59),
                      style: const TextStyle(color: Color(0xff383C59)),
                      decoration: InputDecoration(
                        labelText: 'Return Date',
                        labelStyle: TextStyle(
                          color: Color(0xff383C59),

                        ),
                        suffixIcon: Icon(
                          Icons.calendar_today,color:Color(0xff383C59),
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
                  flex: 1,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      cursorColor:  Color(0xff383C59),
                      style: const TextStyle(color: Color(0xff383C59)),
                      decoration: InputDecoration(
                        labelText: 'Pick-Up Time',
                        labelStyle: TextStyle(
                          color: Color(0xff383C59),

                        ),
                        suffixIcon: Icon(
                          Icons.access_time,color:Color(0xff383C59),
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
                  flex: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      cursorColor:  Color(0xff383C59),
                      style: const TextStyle(color: Color(0xff383C59)),
                      decoration: InputDecoration(
                        labelText: 'Return Time',
                        labelStyle: TextStyle(
                          color: Color(0xff383C59),

                        ),
                        suffixIcon: Icon(
                          Icons.access_time,color:Color(0xff383C59),
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
                  flex: 1,
                ),
              ],
            ),
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
                          Icon(Icons.add),
                          Container(
                            height: 50.0,
                            width: 1.5,
                            color: Color(0xff49454F),
                          ),
                          Text(
                            "0",
                            style: TextStyle(fontSize: 30.0),
                          ),
                          Container(
                            height: 50.0,
                            width: 1.5,
                            color: Color(0xff49454F),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ),
                  ),
                  flex: 1,
                ),
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
                          Icon(Icons.add),
                          Container(
                            height: 50.0,
                            width: 1.5,
                            color: Color(0xff49454F),
                          ),
                          Text(
                            "0",
                            style: TextStyle(fontSize: 30.0),
                          ),
                          Container(
                            height: 50.0,
                            width: 1.5,
                            color: Color(0xff49454F),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: DarkButton(
                txt: 'Save',
                onPress: () {

                },
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //     builder: (context) => AvailableCarsScreen())),
                buttonWidth: 250,
                buttonHeight: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
