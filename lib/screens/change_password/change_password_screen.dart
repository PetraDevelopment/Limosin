import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:limousine/screens/change_password/change_password_controller.dart';
import 'package:limousine/screens/profile/profile_screen.dart';

import '../../components/components.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_textfield.dart';
import '../../components/dark_button.dart';
import '../contact_us_screen.dart';
import '../home/home_screen.dart';

class ChangePasswordScreen extends StatelessWidget {

  TextEditingController confirnewmpasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<ChangePasswordController>(
        init: ChangePasswordController(),
    builder: (controller) {
    return
    Scaffold(
        appBar: Custom().customAppBar(context, 'Change Password'),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child:    Image.asset('assets/images/secure 1.png',
                        height: 120, width: 120),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                   CustomTextField(
                            onFieldSubmitted: (term) {
                              // _submit();
                            },
                            validatorFunction: (value) {
                              // if (value!.isEmpty) {
                              //   return getString(context).emptyPassword;
                              // } else if (value != _passwordController.text) {
                              //   return getString(context).passwordMismatch;
                              // } else {
                              //   return null;
                              // }
                            },
                      controller: controller.oldpasswordController,
                    hintTxt: 'Old Password'

                    ,
                     keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   CustomTextField(
                            onFieldSubmitted: (term) {
                              // _submit();
                            },
                            validatorFunction: (value) {
                              // if (value!.isEmpty) {
                              //   return getString(context).emptyPassword;
                              // } else if (value != _passwordController.text) {
                              //   return getString(context).passwordMismatch;
                              // } else {
                              //   return null;
                              // }
                            },
                      controller: controller.newpasswordController ,
                    hintTxt: 'New Password'
                   ,
                     keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   CustomTextField(
                            onFieldSubmitted: (term) {
                              // _submit();
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
                                  controller.newpasswordController.text) {
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
                      controller:confirnewmpasswordController ,
                    hintTxt: 'Confirm New Password'
                    ,
                     keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: DarkButton(
                      txt: 'Change Password',
                      onPress: (){
                        checkInternetConnection().then((value) {
                          if (value) {
                            if (!_formKey.currentState!.validate()) {

                            } else  if (controller.newpasswordController.text==confirnewmpasswordController.text){
                              controller.fetchChangePassword();

                            }
                          } else {
                            SnackBar(
                              content: Text('check Internet Connection'),
                              duration: Duration(seconds: 3),
                            );
                          }
                        });
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => ProfileScreen()));
                      } ,
                      buttonWidth: 220,
                      buttonHeight: 50,
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      );});

  }
}