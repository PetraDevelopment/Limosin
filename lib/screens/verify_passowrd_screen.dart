import 'package:flutter/material.dart';
import 'package:limousine/components/dark_button.dart';
import 'package:limousine/screens/home/home_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../components/custom_appbar.dart';

class VerifyPasswordScreen extends StatelessWidget {
  const VerifyPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom().customAppBar(context, 'Reset Password'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter the code sent to your mobile to\nverify your account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF383C59),
                  fontSize: 12,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                  letterSpacing: 0.50,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              PinCodeTextField(
                textStyle: const TextStyle(
                  color: Color(0xFF383C59),
                  fontSize: 24,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w400,
                  height: 0.75,
                  letterSpacing: 0.50,
                ),
                hintCharacter: '0',
                hintStyle: const TextStyle(
                  color: Color(0xFF383C59),
                  fontSize: 24,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w400,
                  height: 0.75,
                  letterSpacing: 0.50,
                ),
                appContext: context,
                length: 4,
                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 48,
                    fieldWidth: 51,
                    activeFillColor: Colors.white,
                    inactiveColor: const Color(0xff383C59),
                    selectedColor: const Color(0xff383C59),
                    activeColor: const Color(0xff383C59),
                    selectedFillColor: Colors.white),
                cursorColor: const Color(0xff383C59),
                animationDuration: const Duration(milliseconds: 300),
                // errorAnimationController: errorController,
                // controller: _verifyController,
                keyboardType: TextInputType.number,
                onCompleted: (v) {
                  // debugPrint("Completed");
                  // print(_verifyController.text);
                },
                onTap: () {
                  // print('vee' + _verifyController.text);
                },
                onChanged: (value) {
                  // debugPrint(value);
                  // setState(() {
                  //   // print('l;l' + _verifyController.text);
                  //
                  //   // currentText = value;
                  // });
                },
                beforeTextPaste: (text) {
                  // debugPrint("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: DarkButton(
                    txt: 'Verify',
                    onPress: () {
                      Navigator.push(
                          context ,
                          MaterialPageRoute(
                              builder: (context) =>  HomeScreen(),
                              maintainState: false));
                    },
                    buttonWidth: double.infinity,
                    buttonHeight: 44),
              )
            ],
          ),
        ),
      ),
    );
  }
}
