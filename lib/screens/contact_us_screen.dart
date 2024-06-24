import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:limousine/screens/profile/profile_screen.dart';
import 'package:limousine/screens/ride_details/ride_details_screen.dart';

import '../components/custom_appbar.dart';
import '../components/custom_textfield.dart';
import '../components/dark_button.dart';
import 'home/home_screen.dart';

class ContactUsScreen extends StatelessWidget {

  final height = 150.0;
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom().customAppBar(context, 'Contact Us'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Get in touch',
                  style: TextStyle(
                    color: Color(0xFF383C59),
                    fontSize: 32,
                    fontFamily: 'Roboto-Regular',
                    fontWeight: FontWeight.w600,
                    height: 1.50,
                    letterSpacing: 0.50,
                  ),
                ),
              ),

              const SizedBox(
                height: 50,
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
                  controller:nameController ,
                hintTxt: 'Name',
                 keyboardType: TextInputType.name,
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
                  controller: nameController,
                hintTxt: 'Email address',
                 keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox( // <--- SizedBox
                height: height,
                child: TextFormField(
                    cursorColor:  Color(0xff383C59),

                  maxLines: height ~/ 20,  // <--- maxLines
                    decoration: const InputDecoration(

                      hintText: 'Message',
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
                          borderSide: BorderSide(
                            color: Color(0xFF79747E),
                            width: .5,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Color(0xFF79747E),
                            width: .5,
                          )),
                    )
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Center(
                child: DarkButton(
                  txt: 'Submit',
                  onPress: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen())),
                  buttonWidth: 190,
                  buttonHeight: 50,
                ),
              ),

              // Text.rich(
              //   TextSpan(
              //     children: [
              //       TextSpan(
              //         text: 'Welcome to ',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 24,
              //           fontFamily: 'Roboto-Medium',
              //           fontWeight: FontWeight.w600,
              //           height: 1.33,
              //         ),
              //       ),
              //       TextSpan(
              //         text: 'YLimo',
              //         style: TextStyle(
              //           color: Color(0xFF383C59),
              //           fontSize: 24,
              //           fontFamily: 'Roboto-Medium',
              //           fontWeight: FontWeight.w600,
              //           height: 1.33,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
