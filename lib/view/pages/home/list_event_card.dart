import 'package:booking_app/view/components/home/card_event.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListEventCard extends StatelessWidget {
  const ListEventCard({super.key, required this.data});
  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      height: 307,
      margin: const EdgeInsets.only(left: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: CardEvent(
            title: data[index]['title'] ?? "",
            date: data[index]['date'] ?? "",
            month: data[index]['month'] ?? "",
            eventPath: data[index]['image'] ?? '',
            numberOfPeople: int.parse(data[index]['numberOfPeople'] ?? "0"),
            place: data[index]['place'] ?? '',
            onTapped: () {
              Get.toNamed(RoutesName.event);
            },
            onBookmarkTapped: () {},
          ),
        ),
      ),
    ));
  }
}
