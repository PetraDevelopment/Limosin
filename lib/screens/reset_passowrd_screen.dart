
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:limousine/screens/verify_passowrd_screen.dart';

import '../components/custom_appbar.dart';
import '../components/dark_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                'Enter the phone number that is associated with \nyour YLIMO account',
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
              IntlPhoneField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                    BorderSide(width: 2, color: Color(0xff383C59)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                    BorderSide(width: 2, color: Color(0xff383C59)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                    BorderSide(width: 2, color: Color(0xff383C59)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                    BorderSide(width: 2, color: Color(0xff383C59)),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: DarkButton(
                    txt: 'Send Code',
                    onPress: () {
                      Navigator.push(
                          context ,
                          MaterialPageRoute(
                              builder: (context) =>  VerifyPasswordScreen(),
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