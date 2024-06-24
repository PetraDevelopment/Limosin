import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String image, hintTxt;
  TextEditingController controller;
 TextInputType keyboardType;
  final String? Function(String? s) validatorFunction;
  final Function(String s)? onFieldSubmitted;
  CustomTextField({super.key, required this.hintTxt,required this.validatorFunction,required this.onFieldSubmitted,required this.keyboardType,required this.controller,  this.image=''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
         keyboardType:keyboardType ,
        controller: controller,
          validator: validatorFunction,
          decoration: InputDecoration(
        hintText: hintTxt,

        hintStyle: const TextStyle(
          color: Color(0xFF49454F),
          fontSize: 16,
          fontFamily: 'Roboto-Regular',
          fontWeight: FontWeight.w400,
          height: 1.50,
          letterSpacing: 0.50,
        ),
        suffixIcon:image.isNotEmpty? Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            image,
            width: 25,
            height: 25,
          ),
        ):null,
        enabledBorder: myinputborder(),
        focusedBorder: myfocusborder(),


      )),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color:  Color(0xFF79747E),
          width: .5,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color:  Color(0xFF79747E),
          width: .5,
        ));
  }
}
