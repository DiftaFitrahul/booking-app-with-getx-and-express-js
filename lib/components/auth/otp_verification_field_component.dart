
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerificationComponent extends StatelessWidget {
  final bool nextFocus;
  const OTPVerificationComponent({super.key, this.nextFocus = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      width: 70,
      child: TextFormField(
        cursorHeight: 0,
        cursorWidth: 0,
        onChanged: (value) {
          if (value.length == 1) {
            if (nextFocus == true) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).unfocus();
            }
          }
        },
        onSaved: (newValue) {},
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 17),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                )),
            hintText: '-'),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
