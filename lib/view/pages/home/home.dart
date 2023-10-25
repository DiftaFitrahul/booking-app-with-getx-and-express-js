import 'package:booking_app/view/components/home/header_event_title.dart';
import 'package:booking_app/view/pages/home/header_sliver_custom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Column(),
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          delegate: HomeSliverAppbar(),
          pinned: true,
        ),
        const HeaderEventTitle(),
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
    );
  }
}
