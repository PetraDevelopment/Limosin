import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:limousine/screens/on_boarding_screens/second_step_screen.dart';
import 'package:limousine/screens/on_boarding_screens/third_step_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/bordered_button.dart';
import '../../components/dark_button.dart';
import '../home/home_screen.dart';
import '../log_in/sign_in_screen.dart';
import '../register/sign_up_screen.dart';
import 'forht_step_screen.dart';

final controllerSmooth = PageController(keepPage: true);

class FirstStepScreen extends StatefulWidget {
  const FirstStepScreen({Key? key}) : super(key: key);

  @override
  State<FirstStepScreen> createState() => _MyStatefulWidgetState();
}
final userData = GetStorage();
class _MyStatefulWidgetState extends State<FirstStepScreen>
    with TickerProviderStateMixin {


  @override
  void initState() {

    Future.delayed(const Duration(seconds: 1), () {
      userData.read('userIsloggedIn') != null
          ? userData.read('userIsloggedIn')
              ?      Get.offAll(HomeScreen())     :       Get.to(FirstStepScreen())
          :     Get.to(FirstStepScreen());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff383C59),
          image: DecorationImage(
            image: AssetImage("assets/images/bac.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controllerSmooth,
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 7,
                          child: SizedBox(
                            height: 30,
                          ),
                        ),
                        Flexible(
                          flex: 70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Welcome to ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'Roboto-Medium',
                                        fontWeight: FontWeight.w600,
                                        height: 1.33,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'YLimo',
                                      style: TextStyle(
                                        color: Color(0xFF383C59),
                                        fontSize: 24,
                                        fontFamily: 'Roboto-Medium',
                                        fontWeight: FontWeight.w600,
                                        height: 1.33,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Safe Travel ,\nProfessional\ndrivers.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'Roboto-Bold',
                                  fontWeight: FontWeight.w700,
                                  height: 1.10,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Swipe to learn more ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SecondStepScreen(),
                    ThirdStepScreen(),
                    ForthStepScreen(),
                    // const RequistForFacilitation5st(),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: controllerSmooth,
                count: 4,
                effect: const WormEffect(
                  activeDotColor: Color(0xffFAFAFF),
                  dotColor: Color(0xffD1D1D1),
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DarkButton(
                    txt: 'Sign In',
                    buttonWidth: 146,
                    buttonHeight: 42,
                    onPress: () {
                      Get.to(SignInScreen());
                    },
                  ),
                  BorderedButton(
                    txt: 'Sign Up',
                    onTap: () {
                      Get.to(SignUpScreen());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => SignUpScreen()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
