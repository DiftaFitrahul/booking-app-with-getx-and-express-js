import 'package:flutter/material.dart';

import '../../../view/constants/fonts/air_bnb_cereal.dart';

class FormAuthComponent extends StatelessWidget {
  final TextEditingController formController;
  final String hintText;
  final Icon leadingIcon;
  final TextInputType keyboardType;
  final IconButton? trailingButton;
  final bool obscureText;
  final String? Function(String?)? validator;
  const FormAuthComponent(
      {super.key,
      required this.formController,
      required this.hintText,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      required this.validator,
      required this.leadingIcon,
      required this.trailingButton});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: formController,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      validator: validator,
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
