import 'package:booking_app/features/users/global/button_auth_comp.dart';
import 'package:booking_app/features/users/global/form_auth_comp.dart';
import 'package:booking_app/features/users/global/provider_auth_button_comp.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _usernameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: _formKey,
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
                              context.pop();
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
                      FormAuthComponent(
                        formController: _usernameController,
                        hintText: 'Full name',
                        leadingIcon: const Icon(Icons.person_outlined),
                        trailingButton: null,
                        validator: (String? value) {
                          if (value == null) return "invalid username";
                          if (value.isEmpty) return "username is empty";
                          if (value.length < 3) return "username too sort";
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FormAuthComponent(
                        formController: _emailController,
                        hintText: 'abc@email.com',
                        keyboardType: TextInputType.emailAddress,
                        leadingIcon: const Icon(Icons.email_outlined),
                        trailingButton: null,
                        validator: (String? value) {
                          if (value == null) return "invalid email";
                          if (!EmailValidator.validate(value))
                            // ignore: curly_braces_in_flow_control_structures
                            return "invalid email";
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
                        leadingIcon: const Icon(Icons.lock_outline_rounded),
                        trailingButton: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_outlined),
                        ),
                        validator: (String? value) {
                          if (value == null) return "invalid password";
                          if (value.isEmpty) return "password is empty";
                          if (value.length < 7) return "password too weak";
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FormAuthComponent(
                        formController: _confirmPasswordController,
                        hintText: 'Confirm password',
                        obscureText: true,
                        leadingIcon: const Icon(Icons.lock_outline),
                        trailingButton: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_outlined),
                        ),
                        validator: (String? value) {
                          if (value == null) return "invalid password";
                          if (value.isEmpty) return "password is empty";
                          if (value != _passwordController.text)
                            // ignore: curly_braces_in_flow_control_structures
                            return "password isn't same";
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ButtonAuthComp(
                        title: 'Sign Up',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Sukses Register")));
                            context.pushNamed(RoutesName.verification);
                            return;
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Gagal Register")));
                          // Get.toNamed(RoutesName.verification);
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
                      ProviderAuthButton(
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
                      ProviderAuthButton(
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
                                        color:
                                            Color.fromARGB(255, 86, 105, 240)),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        context.pop();
                                      })
                              ])))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
