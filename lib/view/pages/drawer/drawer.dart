import 'package:booking_app/view/components/drawer/drawer_item.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 25, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  userImagePath,
                  height: 60,
                  width: 60,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Ashfak Sayem',
                style: TextStyle(
                  fontFamily: airBnbCereal,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                title: 'My Profile',
                icon: Icons.person_outline,
                onTap: () {},
              ),
              DrawerItem(
                badge: true,
                badgeNumber: 3,
                title: 'Message',
                icon: Icons.sms_outlined,
                onTap: () {},
              ),
              DrawerItem(
                title: 'Calender',
                icon: Icons.calendar_today_outlined,
                onTap: () {},
              ),
              DrawerItem(
                title: 'Bookmark',
                icon: CupertinoIcons.bookmark,
                onTap: () {},
              ),
              DrawerItem(
                title: 'Contact Us',
                icon: Icons.email_outlined,
                onTap: () {},
              ),
              DrawerItem(
                title: 'Settings',
                icon: Icons.settings_outlined,
                onTap: () {},
              ),
              DrawerItem(
                title: 'Helps & FAQs',
                icon: Icons.help_outline_sharp,
                onTap: () {},
              ),
              DrawerItem(
                title: 'Sign Out',
                icon: Icons.logout,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
