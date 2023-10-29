import 'package:booking_app/view/components/auth/button_primary_component.dart';
import 'package:booking_app/view/components/auth/form_auth_component.dart';
import 'package:booking_app/view/components/auth/provider_button_component.dart';
import 'package:booking_app/view/constants/auth/background_effect_const.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    final screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: const Alignment(1, 1),
            child: Image.asset(
              AuthBackgroundEffect.blurEffect,
              fit: BoxFit.contain,
            ),
          ),
          LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.02,
                                ),
                                SizedBox(
                                  height: screenHeight < 880 ? 60 : 70,
                                  width: screenHeight < 880 ? 60 : 70,
                                  child: Image.asset(
                                    'assets/image/Group.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'EventHub',
                                  style: TextStyle(
                                      fontFamily: airBnbCereal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                          fontFamily: airBnbCereal,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                FormAuthComp(
                                    formController: _emailController,
                                    hintText: 'email@365.com',
                                    leadingIcon: const Icon(Icons.email),
                                    trailingButton: null),
                                const SizedBox(
                                  height: 20,
                                ),
                                FormAuthComp(
                                  formController: _passwordController,
                                  hintText: 'Your password',
                                  leadingIcon:
                                      const Icon(Icons.lock_outline_rounded),
                                  trailingButton: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.remove_red_eye_outlined)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Transform.scale(
                                          scale: 0.8,
                                          child: CupertinoSwitch(
                                            value: true,
                                            onChanged: (value) {},
                                            activeColor: Colors.blue,
                                          ),
                                        ),
                                        Text(
                                          'Remember Me',
                                          style: TextStyle(
                                              fontFamily: airBnbCereal,
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        )
                                      ]),
                                      TextButton(
                                          onPressed: () {
                                            Get.toNamed(
                                                RoutesName.resetPassword);
                                          },
                                          child: Text(
                                            'Forgot Password?',
                                            style: TextStyle(
                                                fontFamily: airBnbCereal,
                                                color: Colors.black
                                                    .withOpacity(0.6)),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(height: screenHeight < 880 ? 10 : 20),
                                ButtonPrimaryComp(
                                  title: 'Sign In',
                                  onPressed: () {
                                    Get.offNamed(RoutesName.main);
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: screenHeight < 880 ? 20 : 25),
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
                                SizedBox(height: screenHeight < 880 ? 15 : 20),
                                ProviderLogButton(
                                  title: 'Login with Facebook',
                                  logoPath: 'assets/image/facebook.png',
                                  onPress: () {},
                                ),
                                const Expanded(child: SizedBox()),
                                Padding(
                                    padding: EdgeInsets.only(
                                        bottom: screenHeight < 880
                                            ? 9
                                            : screenHeight > 920
                                                ? 50.0
                                                : 30.0),
                                    child: RichText(
                                        text: TextSpan(
                                            text: "Don't have an account? ",
                                            style: const TextStyle(
                                                fontFamily: airBnbCereal,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                              text: 'Sign Up',
                                              style: const TextStyle(
                                                  fontFamily: airBnbCereal,
                                                  color: Color.fromARGB(
                                                      255, 86, 105, 240)),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  Get.toNamed(
                                                      RoutesName.register);
                                                })
                                        ])))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
        ],
      )),
    );
  }
}
