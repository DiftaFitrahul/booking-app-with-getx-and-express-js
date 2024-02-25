import 'package:booking_app/features/users/global/form_auth_comp.dart';
import 'package:booking_app/view/components/auth/button_primary_component.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      'Reset Password',
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
                    "Please enter your email address to",
                    style: TextStyle(fontFamily: airBnbCereal, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "request a password reset",
                    style: TextStyle(fontFamily: airBnbCereal, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                FormAuthComponent(
                  formController: _controller,
                  hintText: 'abc@email.com',
                  leadingIcon: const Icon(Icons.email_outlined),
                  trailingButton: null,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null) return "invalid email";
                    if (!EmailValidator.validate(value)) return "invalid email";
                    return null;
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                ButtonPrimaryComp(
                    title: 'Send',
                    onPressed: () {
                      context.pushNamed(RoutesName.verification);
                    }),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
