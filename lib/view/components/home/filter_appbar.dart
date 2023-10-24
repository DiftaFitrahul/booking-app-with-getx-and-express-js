import 'package:booking_app/getx/home/appbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterAppbar extends StatelessWidget {
  const FilterAppbar({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    final homePageController = Get.find<AppbarController>();
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      padding: EdgeInsets.lerp(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          const EdgeInsets.only(
            bottom: 30,
            right: 20,
          ),
          1 - percentage),
      alignment: Alignment.centerRight,
      child: AnimatedContainer(
        width: percentage == 0.0 ? 37 : 87,
        height: 37,
        padding: const EdgeInsets.only(left: 5),
        duration: const Duration(milliseconds: 230),
        decoration: BoxDecoration(
          color: Color(0xFF5D56F3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: const Color(0xFFA29EF0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.filter_list,
                  size: 22,
                  color: Color(0xFF5D56F3),
                )),
            Obx(() {
              if (percentage == 0.0) {
                homePageController.isShowTextFilter.value = false;
              } else {
                Future.delayed(const Duration(milliseconds: 280), () {
                  homePageController.isShowTextFilter.value = true;
                });
              }
              return Container(
                padding: EdgeInsets.only(
                    left: homePageController.isShowTextFilter.value ? 5.0 : 0),
                child: Text(
                  homePageController.isShowTextFilter.value ? "Filters" : "",
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
