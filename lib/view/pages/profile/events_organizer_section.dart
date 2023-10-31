import 'package:booking_app/view/components/event/event_box.dart';
import 'package:booking_app/view/constants/home/event_image.dart';
import 'package:flutter/widgets.dart';

class EventsOrganizerSection extends StatelessWidget {
  const EventsOrganizerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EventBox(
          date: "1st  May- Sat -2:00 PM",
          title: "A virtual evening of smooth jazz",
          imagePath: event7Path,
          onTapped: () {},
        ),
        EventBox(
          date: "1st  May- Sat -2:00 PM",
          title: "Jo malone london’s mother’s day ",
          imagePath: event8Path,
          onTapped: () {},
        ),
        EventBox(
          date: "1st  May- Sat -2:00 PM",
          title: "Women's leadership conference",
          imagePath: event6Path,
          onTapped: () {},
        ),
        EventBox(
          date: "1st  May- Sat -2:00 PM",
          title: "International gala music festival",
          imagePath: event1Path,
          onTapped: () {},
        ),
      ],
    );
  }
}
