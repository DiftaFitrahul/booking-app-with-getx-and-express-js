import 'package:booking_app/view/components/auth/button_auth_component.dart';
import 'package:booking_app/view/components/auth/otp_verification_field_component.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
                        Get.back();
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OTPVerificationComponent(),
                  OTPVerificationComponent(),
                  OTPVerificationComponent(),
                  OTPVerificationComponent(
                    nextFocus: false,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ButtonAuthComp(title: 'Continue', onPress: () {}),
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
}
