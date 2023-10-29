import 'package:booking_app/getx/home/open_drawer_controller.dart';
import 'package:booking_app/model/repository/home/event.dart';
import 'package:booking_app/view/components/drawer/upgrade_pro.dart';
import 'package:booking_app/view/components/home/background_home_one.dart';
import 'package:booking_app/view/components/home/background_home_two.dart';
import 'package:booking_app/view/components/home/header_event_title.dart';
import 'package:booking_app/view/pages/drawer/drawer.dart';
import 'package:booking_app/view/pages/home/bottom_padding.dart';
import 'package:booking_app/view/pages/home/header_sliver_custom.dart';
import 'package:booking_app/view/pages/home/invite_friend_card.dart';
import 'package:booking_app/view/pages/home/list_event_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerOpenController = Get.find<DrawerControllerGetx>();
    return Stack(
      children: [
        const DrawerSection(),
        const UpgradeProSection(),
        const BackgroundHomeOne(),
        const BackgroundHomeTwo(),
        Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform: Matrix4.translationValues(
              drawerOpenController.xOffset.value,
              drawerOpenController.yOffset.value,
              drawerOpenController.zOffset.value,
            )..scale(drawerOpenController.isDrawerOpen.value ? 0.87 : 1.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 249, 249, 249),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      drawerOpenController.isDrawerOpen.value ? 33.0 : 0),
                  topRight: Radius.circular(
                      drawerOpenController.isDrawerOpen.value ? 33.0 : 0),
                ),
              ),
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
          ),
        )
      ],
    );
  }
}
