import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../global/button_auth_comp.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        weight: 20,
                        size: 40,
                      )),
                ),
              ),
              SizedBox(
                height: screenHeight < 880 ? 10 : 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Verification',
                    style: TextStyle(
                        fontFamily: airBnbCereal,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "We've send you the verification",
                  style: TextStyle(fontFamily: airBnbCereal, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "code on example123@mail.com",
                  style: TextStyle(fontFamily: airBnbCereal, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _otpVerificationComp(context),
                  _otpVerificationComp(context),
                  _otpVerificationComp(context),
                  _otpVerificationComp(context, nextFocus: true)
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ButtonAuthComp(title: 'Continue', onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Re-send code in',
                      style: TextStyle(
                        fontFamily: airBnbCereal,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '0:20',
                      style: TextStyle(
                          fontFamily: airBnbCereal,
                          color: Color.fromARGB(255, 86, 105, 240)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget _otpVerificationComp(BuildContext context, {bool nextFocus = true}) {
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
