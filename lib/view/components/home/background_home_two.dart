import 'package:booking_app/getx/home/open_drawer_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BackgroundHomeTwo extends StatelessWidget {
  const BackgroundHomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerOpenController = Get.find<DrawerControllerGetx>();
    return Obx(
      () => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          transform: Matrix4.translationValues(
              (drawerOpenController.xOffset.value - 20).clamp(0, 240),
              (drawerOpenController.yOffset.value + 40).clamp(0, 110),
              drawerOpenController.zOffset.value)
            ..scale(drawerOpenController.isDrawerOpen.value ? 0.87 : 1.0),
          child: Container(
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      drawerOpenController.isDrawerOpen.value ? 33.0 : 0),
                  bottomLeft: Radius.circular(
                      drawerOpenController.isDrawerOpen.value ? 33.0 : 0),
                ),
                color: const Color(0xFFBCBCBC).withOpacity(0.10)),
          )),
    );
  }
}
