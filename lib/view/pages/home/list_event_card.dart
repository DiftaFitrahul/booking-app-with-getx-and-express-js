import 'package:booking_app/view/components/home/card_event.dart';
import 'package:flutter/material.dart';

class ListEventCard extends StatelessWidget {
  const ListEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      height: 310,
      margin: const EdgeInsets.only(left: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CardEvent(),
        ),
      ),
    ));
  }
}
