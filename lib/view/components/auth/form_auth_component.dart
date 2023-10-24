import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class FormAuthComp extends StatelessWidget {
  final TextEditingController formController;
  final String hintText;
  final Icon leadingIcon;
  final IconButton? trailingButton;
  const FormAuthComp(
      {super.key,
      required this.formController,
      required this.hintText,
      required this.leadingIcon,
      required this.trailingButton});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: formController,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.4),
            fontFamily: airBnbCereal,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                width: 2,
                color: Colors.green.withOpacity(0.2),
              )),
          prefixIcon: leadingIcon,
          suffixIcon: trailingButton),
    );
  }
}
