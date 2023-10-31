import 'package:booking_app/view/constants/profile/organizer.dart';
import 'package:booking_app/view/pages/profile/about_organizer_section.dart';
import 'package:booking_app/view/pages/profile/events_organizer_section.dart';
import 'package:booking_app/view/pages/profile/reviews_organizer_section.dart';
import 'package:flutter/widgets.dart';

Widget getItemContentNavbar(OrganizerNavBarItem item) {
  if (item == OrganizerNavBarItem.about) {
    return const AboutOrganizerSection();
  } else if (item == OrganizerNavBarItem.events) {
    return const EventsOrganizerSection();
  } else {
    return const ReviewOrganizerSection();
  }
}
