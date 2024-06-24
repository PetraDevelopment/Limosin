import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:limousine/screens/register/register_controller.dart';

import '../../components/components.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_textfield.dart';
import '../../components/dark_button.dart';
import '../log_in/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  Object dropdownvalue = 'assets/images/icons8_india 1.png';

//  final RegisterController controller = Get.put(RegisterController());

  // List of items in our dropdown menu
  var items = [
    'assets/images/icons8_india 1.png',
    'assets/images/icons8_Colombia_1 1.png',
    'assets/images/icons8_egypt_1 2 (1).png',
  ];
  FocusNode _emailNode = FocusNode();
  FocusNode _firstnameNode = FocusNode();
  FocusNode _lastnameNode = FocusNode();
  FocusNode _phoneNode = FocusNode();
  FocusNode _confirmPasswordNode = FocusNode();
  FocusNode _passwordNode = FocusNode();
  String error = '';
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
        init: RegisterController(),
        builder: (controller) {
          // log("vvvv1${controller.Register.value.msg}");

          return Scaffold(
            appBar: Custom().customAppBar(context, 'Sign up'),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/ontimecar-01 1.png',
                        height: 180,
                        width: 180,
                      ),

                      CustomTextField(
                        onFieldSubmitted: (term) {
                          FocusScope.of(context).requestFocus(_firstnameNode);
                        },
                        validatorFunction: (value) {
                          if (value!.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('First Name is Empty'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          }
                        },
                        controller: controller.firstnameController,
                        hintTxt: 'First Name',
                        keyboardType: TextInputType.name,
                        image: 'assets/images/icons8_user_1 1.png',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        onFieldSubmitted: (term) {
                          FocusScope.of(context).requestFocus(_lastnameNode);
                        },
                        validatorFunction: (value) {
                          if (value!.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Last Name is Empty'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          }
                        },
                        controller: controller.lastnameController,
                        keyboardType: TextInputType.name,
                        hintTxt: 'Last Name',
                        image: 'assets/images/icons8_user_1 1.png',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 55,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFF79747E)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            DropdownButton(
                              underline: Container(),
                              value: dropdownvalue,
                              dropdownColor: const Color(0xffe4ecff),
                              iconSize: 0,
                              items: items.map((String item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(),
                                        child: SizedBox(
                                          width: 27,
                                          height: 27,
                                          child: Image.asset(item),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      Container(
                                        width: 19,
                                        height: 19,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(),
                                        child: const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 9,
                                      ),
                                      const Text(
                                        '+1',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Roboto-Regular',
                                          fontWeight: FontWeight.w400,
                                          height: 1.50,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (Object? newValue) {
                                print(newValue);

                                dropdownvalue = newValue!;
                              },
                            ),
                            Expanded(
                              child: TextFormField(

                                onFieldSubmitted: (term) {
                                  FocusScope.of(context)
                                      .requestFocus(_phoneNode);
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Phone is Empty'),
                                        duration: Duration(seconds: 3),
                                      ),
                                    );
                                  }
                                },
                                controller: controller.phoneController,
                                decoration:
                                    InputDecoration.collapsed(hintText: '01202718911',    hintStyle: const TextStyle(
                                        color: Color(0xFF49454F),
                                fontSize: 18,
                                fontFamily: 'Roboto-Regular',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                                letterSpacing: 0.50,
                              ),),
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                        controller: controller.emailController,
                        hintTxt: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        image: 'assets/images/icons8_Email 1.png',
                      ),
                      const SizedBox(
                        height: 20,
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
                        controller: controller.passwordController,
                        hintTxt: 'Password',
                        keyboardType: TextInputType.number,
                        image: 'assets/images/icons8_lock 1.png',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        onFieldSubmitted: (term) {
                          FocusScope.of(context).requestFocus(_confirmPasswordNode);
                        },
                        validatorFunction: (value) {
                          if (value!.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('The Confirm password is Empty'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          } else if (value !=
                              controller.passwordController.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('The password is not good'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          } else {
                            return null;
                          }
                        },
                        controller: controller.confirmpasswordController,
                        hintTxt: 'Confirm Password',
                        keyboardType: TextInputType.number,
                        image: 'assets/images/icons8_lock 1.png',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      DarkButton(
                        txt: 'Sign Up',
                        onPress: () {
                          checkInternetConnection().then((value) {
                            if (value) {
                              if (!_formKey.currentState!.validate()) {
                              } else {
                                controller.fetchRegister();
                                log("vvvv${controller.Register.value.msg}");
                                error =
                                    controller.Register.value.msg.toString();
                                log("error${error}");
                              }
                            } else {
                              SnackBar(
                                content: Text('check Internet Connection'),
                                duration: Duration(seconds: 3),
                              );
                            }
                          });
                        },
                        buttonWidth: 207,
                        buttonHeight: 44,
                      ),
                      // Text(controller.Register.value.msg.toString()),
                      const SizedBox(
                        height: 30,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 244,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'By tapping on the “ Sign Up “ above you agree to ',
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
                                    text: 'Terms of Use',
                                    style: TextStyle(
                                      color: Color(0xFF383C59),
                                      fontSize: 12,
                                      fontFamily: 'Roboto-Regular',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and ',
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
                                    text: 'Privacy Policy.',
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
                          GestureDetector(
                            onTap: (){
                              Get.to(SignInScreen());
                            },
                            child: SizedBox(
                              width: 61,
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Color(0xFF383C59),
                                  fontSize: 16,
                                  fontFamily: 'Roboto-Medium',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });

  }

}
