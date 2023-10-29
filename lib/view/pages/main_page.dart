import 'package:booking_app/getx/home/open_drawer_controller.dart';
import 'package:booking_app/getx/main_page.dart';
import 'package:booking_app/view/functions/main_page.dart';
import 'package:booking_app/view/pages/home/bottom_navigation_bar.dart';
import 'package:booking_app/view/pages/home/bottom_navigation_item.dart';
import 'package:booking_app/view/pages/home/floating_action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerOpenController = Get.find<DrawerControllerGetx>();
    final mainPageController = Get.find<MainPageController>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Obx(
          () => getPageBasedOnNavigation(
              mainPageController.currentIndexPage.value),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatingActionButtonHome(),
        bottomNavigationBar: Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform: Matrix4.translationValues(
              drawerOpenController.xOffsetNavigationBar.value,
              drawerOpenController.yOffsetNavigationBar.value,
              drawerOpenController.zOffset.value,
            )..scale(drawerOpenController.isDrawerOpen.value ? 0.87 : 1.0),
            child: FABBottomAppBar(
              backgroundColor: Colors.white,
              centerItemText: null,
              notchedShape: null,
              color: Colors.grey,
              selectedColor: const Color(0xFF5669FF),
              onTabSelected: (index) {
                mainPageController.currentIndexPage.value = index;
              },
              items: [
                FABBottomAppBarItem(
                    iconData: CupertinoIcons.compass_fill, text: 'Explore'),
                FABBottomAppBarItem(
                    iconData: Icons.event_note_outlined, text: 'Events'),
                FABBottomAppBarItem(
                    iconData: Icons.pin_drop_sharp, text: 'Map'),
                FABBottomAppBarItem(
                    iconData: CupertinoIcons.person_fill, text: 'Profile'),
              ],
            ),
          ),
        ));
  }
}
