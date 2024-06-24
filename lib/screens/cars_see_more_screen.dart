import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:limousine/screens/car_details/cars_details_screen.dart';

import '../components/custom_appbar.dart';
import '../utils/constants.dart';
import 'add_car/add_car_details_screen.dart';
import 'car_details/car_details_controller.dart';

class CarsSeeMoreScreen extends StatelessWidget {
  CarsSeeMoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: FloatingActionButton(
              child: Icon(Icons.add,size: 40,),
              onPressed: () {
                Navigator.push(
                    context ,
                    MaterialPageRoute(
                        builder: (context) =>  AddCarDetailsScreen(),
                        maintainState: false));
              },
              backgroundColor: const Color(0xff383C59)),
        ),
        appBar:
        Custom().customAppBar(context, 'Cars', Icons.notifications),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                _buildOurCarsCategory(),

              ],
            ),
          ),
        ),
      );
  }
  _buildOurCarsCategory() {
    return  GetBuilder<CarDetailsController>(
        init: CarDetailsController(),
    builder: (controller) {
    return

   controller.CarDetails.value.data != null ?
      ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          height: 160,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${controller.CarDetails.value.data?[index].ctname}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.60,
                    ),
                  ),
                  SizedBox(height: 10,),
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
                          text: '${controller.CarDetails.value.data?[index].cNumber}',
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
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){
                      Get.to(CarsDetailsScreen(),arguments: [controller.CarDetails.value.data?[index].cId]);
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) =>   CarsDetailsScreen()));
                    },
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
                ],
              ),
              controller.CarDetails.value.data?[index].cImage!=null? Image.network(apiBaseUrl+"/"+controller.CarDetails.value.data![index].cImage!,height: 200,width: 180,):Container()
              //Image.asset('assets/images/pngwing 1.png',height: 200,width: 180,),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 17,
        );
      },
      itemCount: controller.CarDetails.value.data!.length):Container();});}
}
