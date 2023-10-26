import 'package:booking_app/getx/home/open_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingActionButtonHome extends StatelessWidget {
  const FloatingActionButtonHome({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerOpenController = Get.find<DrawerControllerGetx>();
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(
            drawerOpenController.xOffsetFloatingActionButton.value,
            drawerOpenController.yOffsetFloatingActionButton.value,
            drawerOpenController.zOffset.value)
          ..scale(drawerOpenController.isDrawerOpen.value ? 0.87 : 1.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF5669FF),
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF5669FF),
                borderRadius: const BorderRadius.all(
                  Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF5669FF).withOpacity(0.3),
                    spreadRadius: 9,
                    blurRadius: 9,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const Icon(
                Icons.add_box,
                size: 33,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
