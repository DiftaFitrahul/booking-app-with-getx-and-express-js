import 'package:booking_app/view/components/auth/button_auth_component.dart';
import 'package:booking_app/view/components/auth/form_auth_component.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _myController = TextEditingController();
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
                      onPressed: () {},
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
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Please enter your email address to",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "request a password reset",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FormAuthComp(
                  formController: _myController,
                  hintText: 'abc@email.com',
                  leadingIcon: const Icon(Icons.email_outlined),
                  trailingButton: null),
              const SizedBox(
                height: 40,
              ),
              ButtonAuthComp(title: 'Send', onPress: () {}),
            ],
          ),
        ),
      )),
    );
  }
}
