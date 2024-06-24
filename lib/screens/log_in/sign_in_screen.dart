import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:limousine/screens/reset_passowrd_screen.dart';
import 'package:limousine/screens/verify_passowrd_screen.dart';

import '../../components/components.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_textfield.dart';
import '../../components/dark_button.dart';
import '../register/sign_up_screen.dart';
import 'log_in_controller.dart';


class SignInScreen extends StatelessWidget {

  FocusNode _emailNode = FocusNode();
  FocusNode _passwordNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return GetBuilder<LogInController>(
        init: LogInController(),
    builder: (controller) {
      return   Scaffold(
        appBar: Custom().customAppBar(context, 'Sign in'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:  Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset('assets/images/ontimecar-01 1.png',height: 250,width: 250,),
                   CustomTextField(
                     onFieldSubmitted: (term) {
                       FocusScope.of(context).requestFocus(_emailNode);
                     },
                     validatorFunction: (value) {
                       if (value!.isEmpty) {
                         ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(
                             content: Text('Email is Empty'),
                             duration: Duration(seconds: 3),
                           ),
                         );
                       }
                     },
                      controller:controller.emailIogInController,
                    hintTxt: 'Email',
                    image: 'assets/images/icons8_Email 1.png',
                     keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   CustomTextField(
                     onFieldSubmitted: (term) {
                       FocusScope.of(context).requestFocus(_passwordNode);
                     },
                     validatorFunction: (value) {
                       if (value!.isEmpty) {
                         ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(
                             content: Text('Password is Empty'),
                             duration: Duration(seconds: 3),
                           ),
                         );
                       }
                     },
                      controller: controller.passwordIogInController,
                    hintTxt: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    image: 'assets/images/icons8_lock 1.png',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  DarkButton(
                    txt: 'Sign In',
                    onPress: () {
                      checkInternetConnection().then((value) {
                        if (value) {
                          if (!_formKey.currentState!.validate()) {
                          } else {
                            controller.fetchLogIn();
                            log("vvvv${controller.LogIn.value.message}");
                            // error =
                            //     controller.Register.value.msg.toString();
                            // log("error${error}");
                          }
                        } else {
                          SnackBar(
                            content: Text('check Internet Connection'),
                            duration: Duration(seconds: 3),
                          );
                        }
                      });
                    },
                        // Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => HomeScreen())),
                    buttonWidth: 207,
                    buttonHeight: 44,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: ()=>Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResetPasswordScreen())),
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                            color: Color(0xFF383C59),
                            fontSize: 12,
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));

                        },
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'No account yet ? ',
                                style: TextStyle(
                                  color: Color(0xFF939393),
                                  fontSize: 12,
                                  fontFamily: 'Roboto-Regular',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign up',
                                style: TextStyle(
                                  color: Color(0xFF383C59),
                                  fontSize: 12,
                                  fontFamily: 'Roboto-Regular',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );}
    );
  }
}
