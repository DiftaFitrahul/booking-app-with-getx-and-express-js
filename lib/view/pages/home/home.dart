import 'package:booking_app/model/repository/home/event.dart';
import 'package:booking_app/view/components/home/header_event_title.dart';
import 'package:booking_app/view/pages/home/bottom_padding.dart';
import 'package:booking_app/view/pages/home/header_sliver_custom.dart';
import 'package:booking_app/view/pages/home/invite_friend_card.dart';
import 'package:booking_app/view/pages/home/list_event_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
    );
  }
}
