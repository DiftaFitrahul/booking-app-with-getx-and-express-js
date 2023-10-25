import 'package:booking_app/view/components/home/header_event_title.dart';
import 'package:booking_app/view/pages/home/header_sliver_custom.dart';
import 'package:booking_app/view/pages/home/list_event_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Column(),
      body: ColoredBox(
        color: Color.fromARGB(255, 242, 242, 242),
        child: CustomScrollView(slivers: [
          SliverPersistentHeader(
            delegate: HomeSliverAppbar(),
            pinned: true,
          ),
          const HeaderEventTitle(),
          const ListEventCard(),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) => Container(
              height: 100,
              color: Colors.red,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            ),
          ))
        ]),
      ),
    );
  }
}
