import 'package:booking_app/view/components/filled_icon_button_comp.dart';
import 'package:booking_app/view/components/outline_icon_button_comp.dart';
import 'package:booking_app/view/components/profile/header_profile.dart';
import 'package:booking_app/view/constants/event/asset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailOrganizerEvent extends StatelessWidget {
  const DetailOrganizerEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const SizedBox(
                  height: 40,
                ),
                const HeaderProfile(
                    imagePath: organizer, following: 121, followers: 5729),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
                      child: FilledIconButtonComp(
                          icon: Icons.person_add_alt_outlined,
                          onTapped: () {},
                          text: 'Follow'),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Expanded(
                      flex: 1,
                      child: OutlineIconButtonComp(
                          icon: Icons.sms_outlined,
                          onTapped: () {},
                          text: 'Messages'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
