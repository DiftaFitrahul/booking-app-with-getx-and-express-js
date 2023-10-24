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
          const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          const EdgeInsets.only(
            bottom: 30,
            right: 16,
          ),
          1 - percentage),
      alignment: Alignment.centerRight,
      child: AnimatedContainer(
        width: percentage == 0.0 ? 40 : 93,
        height: 40,
        padding: const EdgeInsets.only(left: 5),
        duration: const Duration(milliseconds: 230),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 63, 71, 63),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.filter_list,
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
                    left: homePageController.isShowTextFilter.value ? 8.0 : 0),
                child: Text(
                  homePageController.isShowTextFilter.value ? "Filter" : "",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
