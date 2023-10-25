import 'package:booking_app/model/repository/home/event.dart';
import 'package:booking_app/view/components/home/header_event_title.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/pages/home/bottom_navigation_bar.dart';
import 'package:booking_app/view/pages/home/bottom_navigation_item.dart';
import 'package:booking_app/view/pages/home/bottom_padding.dart';
import 'package:booking_app/view/pages/home/header_sliver_custom.dart';
import 'package:booking_app/view/pages/home/invite_friend_card.dart';
import 'package:booking_app/view/pages/home/list_event_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _selectedTab(int index) {
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Column(),
      body: ColoredBox(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
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
      bottomNavigationBar: FABBottomAppBar(
        backgroundColor: Colors.white,
        centerItemText: null,
        notchedShape: null,
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
    );
  }
}
