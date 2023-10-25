import 'package:booking_app/view/components/auth/button_auth_component.dart';
import 'package:booking_app/view/components/auth/form_auth_component.dart';
import 'package:booking_app/view/components/auth/provider_button_component.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
          child: LayoutBuilder(
        builder: (_, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
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
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight < 880 ? 10 : 20,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontFamily: airBnbCereal,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    FormAuthComp(
                        formController: _textController,
                        hintText: 'Full name',
                        leadingIcon: const Icon(Icons.person_outlined),
                        trailingButton: null),
                    const SizedBox(
                      height: 20,
                    ),
                    FormAuthComp(
                        formController: _textController,
                        hintText: 'abc@email.com',
                        leadingIcon: const Icon(Icons.email_outlined),
                        trailingButton: null),
                    const SizedBox(
                      height: 20,
                    ),
                    FormAuthComp(
                        formController: _textController,
                        hintText: 'Your password',
                        leadingIcon: const Icon(Icons.lock_outline_rounded),
                        trailingButton: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_outlined),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    FormAuthComp(
                        formController: _textController,
                        hintText: 'Confirm password',
                        leadingIcon: const Icon(Icons.lock_outline),
                        trailingButton: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_outlined),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonAuthComp(
                      title: 'Sign Up',
                      onPress: () {
                        Get.toNamed(RoutesName.verification);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight < 880
                            ? 20
                            : screenHeight < 950
                                ? 25
                                : 35,
                      ),
                      child: Text(
                        'OR',
                        style: TextStyle(
                            fontFamily: airBnbCereal,
                            fontSize: screenHeight < 880 ? 17 : 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    ProviderLogButton(
                      title: 'Login with Google',
                      logoPath: 'assets/image/google.png',
                      onPress: () {},
                    ),
                    SizedBox(
                      height: screenHeight < 880
                          ? 12.0
                          : screenHeight < 950
                              ? 20
                              : 25,
                    ),
                    ProviderLogButton(
                      title: 'Login with Facebook',
                      logoPath: 'assets/image/facebook.png',
                      onPress: () {},
                    ),
                    const Expanded(child: SizedBox()),
                    Padding(
                        padding: EdgeInsets.only(
                          bottom: screenHeight < 880
                              ? 9.0
                              : screenHeight < 950
                                  ? 30
                                  : 80.0,
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Already have an account? ',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: airBnbCereal,
                                ),
                                children: [
                              TextSpan(
                                  text: 'Sign In',
                                  style: const TextStyle(
                                      fontFamily: airBnbCereal,
                                      color: Color.fromARGB(255, 86, 105, 240)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.back();
                                    })
                            ])))
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
