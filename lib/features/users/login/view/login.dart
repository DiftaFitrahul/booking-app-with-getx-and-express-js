import 'package:booking_app/features/users/global/button_auth_comp.dart';
import 'package:booking_app/features/users/global/form_auth_comp.dart';
import 'package:booking_app/features/users/global/provider_auth_button_comp.dart';
import 'package:booking_app/view/constants/auth/background_effect_const.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPageNew extends StatefulWidget {
  const LoginPageNew({super.key});

  @override
  State<LoginPageNew> createState() => _LoginPageNewState();
}

class _LoginPageNewState extends State<LoginPageNew> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
          child: Form(
        key: _formKey,
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
                                FormAuthComponent(
                                  formController: _emailController,
                                  hintText: 'email@365.com',
                                  keyboardType: TextInputType.emailAddress,
                                  leadingIcon: const Icon(Icons.email),
                                  trailingButton: null,
                                  validator: (value) {
                                    if (value == null)
                                      // ignore: curly_braces_in_flow_control_structures
                                      return "Email is not valid";
                                    if (!EmailValidator.validate(value))
                                      // ignore: curly_braces_in_flow_control_structures
                                      return "Email is not valid";
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                FormAuthComponent(
                                  formController: _passwordController,
                                  hintText: 'Your password',
                                  obscureText: true,
                                  leadingIcon:
                                      const Icon(Icons.lock_outline_rounded),
                                  trailingButton: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.remove_red_eye_outlined)),
                                  validator: (value) {
                                    if (value == null)
                                      // ignore: curly_braces_in_flow_control_structures
                                      return "password is not valid";
                                    if (value.isEmpty || value.length < 7)
                                      // ignore: curly_braces_in_flow_control_structures
                                      return "password is not valid";
                                    return null;
                                  },
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
                                          onPressed: () {},
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
                                ButtonAuthComp(
                                  title: 'Sign In',
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text("Sukses Login")));
                                      return;
                                    }
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text("Gagal Login")));
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
                                ProviderAuthButton(
                                  title: 'Login with Google',
                                  logoPath: 'assets/image/google.png',
                                  onPress: () {},
                                ),
                                SizedBox(height: screenHeight < 880 ? 15 : 20),
                                ProviderAuthButton(
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
                                                  context.pushNamed(
                                                      RoutesName.register);
                                                })
                                        ])))
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
          ],
        ),
      )),
    );
  }
}
