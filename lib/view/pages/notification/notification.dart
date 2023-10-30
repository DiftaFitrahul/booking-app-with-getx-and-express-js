import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/notification/icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Notification',
                    style: TextStyle(
                      fontFamily: airBnbCereal,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: Colors.black,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100]?.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 11, horizontal: 12),
                          constraints: const BoxConstraints(),
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert_outlined,
                              size: 26, color: Colors.black))),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.18,
              ),
              Image.asset(iconNotificationPath),
              const Text(
                'No Notifications!',
                style: TextStyle(
                    fontFamily: airBnbCereal,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: screenWidth * 0.8,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: airBnbCereal,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff344B67)),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
