import 'package:booking_app/model/repository/home/event.dart';
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
        itemCount: EventRepository.data.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: CardEvent(
            title: EventRepository.data[index]['title'] ?? "",
            date: EventRepository.data[index]['date'] ?? "",
            month: EventRepository.data[index]['month'] ?? "",
            eventPath: EventRepository.data[index]['image'] ?? '',
            numberOfPeople:
                int.parse(EventRepository.data[index]['numberOfPeople'] ?? "0"),
            place: EventRepository.data[index]['place'] ?? '',
            onTapped: () {
              print('=============================');
              print('card tapped');
              print('=============================');
            },
            onBookmarkTapped: () {
              print('---------------------------');
              print('bookmark tapped');
              print('---------------------------');
            },
          ),
        ),
      ),
    ));
  }
}
