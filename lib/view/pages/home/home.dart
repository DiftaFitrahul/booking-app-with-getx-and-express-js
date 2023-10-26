import 'package:booking_app/getx/home/drawer_controller.dart';
import 'package:booking_app/model/repository/home/event.dart';
import 'package:booking_app/view/components/home/drawer_item.dart';
import 'package:booking_app/view/components/home/header_event_title.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/drawer.dart';
import 'package:booking_app/view/functions/home/offsett_fab_drawer_open.dart';

import 'package:booking_app/view/pages/home/bottom_navigation_bar.dart';
import 'package:booking_app/view/pages/home/bottom_navigation_item.dart';
import 'package:booking_app/view/pages/home/bottom_padding.dart';
import 'package:booking_app/view/pages/home/header_sliver_custom.dart';
import 'package:booking_app/view/pages/home/invite_friend_card.dart';
import 'package:booking_app/view/pages/home/list_event_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _selectedTab(int index) {
    print(index);
  }

  double xOffset = 0;
  double yOffset = 0;
  double xOffsetNavigationBar = 0;
  double yOffsetNavigationBar = 0;
  double xOffsetFloatingActionButton = 0;
  double yOffsetFloatingActionButton = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final drawerController = Get.find<DrawerControllerGetx>();
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
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
          ),
          Transform.translate(
            offset: const Offset(0, 50),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFF00F8FF).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      upgradeProPath,
                      scale: 1.7,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Upgrade Pro',
                      style: TextStyle(
                          fontFamily: airBnbCereal,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0XFF00F8FF)),
                    )
                  ],
                ),
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(isDrawerOpen ? 0.87 : 1.0),
            child: InkWell(
              onTap: () {
                drawerController.toggleDrawer();
                setState(() {
                  isDrawerOpen = !isDrawerOpen;
                  xOffset = isDrawerOpen ? 230 : 0;
                  yOffset = isDrawerOpen ? 70 : 0;
                  xOffsetNavigationBar = isDrawerOpen ? 230 : 0;
                  yOffsetNavigationBar = isDrawerOpen ? -33 : 0;
                  xOffsetFloatingActionButton = isDrawerOpen
                      ? getOffseetFABDrawerOpen(
                          MediaQuery.sizeOf(context).width)
                      : 0;
                  yOffsetFloatingActionButton = isDrawerOpen ? -16 : 0;
                });
              },
              child: ColoredBox(
                color: const Color.fromARGB(255, 249, 249, 249),
                child: CustomScrollView(slivers: [
                  SliverPersistentHeader(
                    delegate: HomeSliverAppbar(),
                    pinned: true,
                  ),
                  HeaderEventTitle(
                    title: "Upcoming Events",
                    onTapped: () {},
                  ),
                  const ListEventCard(data: EventRepository.data),
                  const InviteFriendCard(),
                  HeaderEventTitle(
                    topPadding: 10,
                    title: "Nearby You",
                    onTapped: () {},
                  ),
                  const ListEventCard(data: EventRepository.nearbyYou),
                  const BottomHomePadding()
                ]),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(
            xOffsetFloatingActionButton, yOffsetFloatingActionButton, 0)
          ..scale(isDrawerOpen ? 0.87 : 1.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF5669FF),
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF5669FF),
                borderRadius: const BorderRadius.all(
                  Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF5669FF).withOpacity(0.3),
                    spreadRadius: 9,
                    blurRadius: 9,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const Icon(
                Icons.add_box,
                size: 33,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(
            xOffsetNavigationBar, yOffsetNavigationBar, 0)
          ..scale(isDrawerOpen ? 0.87 : 1.0),
        child: FABBottomAppBar(
          backgroundColor: Colors.white,
          centerItemText: null,
          notchedShape: const CircularNotchedRectangle(),
          color: Colors.grey,
          selectedColor: const Color(0xFF5669FF),
          onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(
                iconData: CupertinoIcons.compass_fill, text: 'Explore'),
            FABBottomAppBarItem(
                iconData: Icons.event_note_outlined, text: 'Events'),
            FABBottomAppBarItem(iconData: Icons.pin_drop_sharp, text: 'Map'),
            FABBottomAppBarItem(
                iconData: CupertinoIcons.person_fill, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}
