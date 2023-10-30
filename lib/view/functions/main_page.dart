import 'package:booking_app/view/pages/event/events.dart';
import 'package:booking_app/view/pages/home/home.dart';
import 'package:booking_app/view/pages/profile/profile.dart';
import 'package:flutter/widgets.dart';

Widget getPageBasedOnNavigation(int index) {
  if (index == 0) {
    return const HomePage();
  } else if (index == 1) {
    return const EventsPage();
  } else {
    return const ProfilePage();
  }
}
