import 'package:booking_app/getx/home/appbar_controller.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
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
          const EdgeInsets.only(right: 16, top: 20, bottom: 20),
          const EdgeInsets.only(
            bottom: 35,
            right: 16,
          ),
          1 - percentage),
      alignment: Alignment.centerRight,
      child: AnimatedContainer(
        width: percentage == 0.0 ? 36 : 89,
        height: 36,
        padding: const EdgeInsets.only(
          left: 5,
        ),
        margin: EdgeInsets.only(top: percentage * 43),
        duration: const Duration(milliseconds: 225),
        decoration: BoxDecoration(
          color: const Color(0xFF5D56F3),
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
                  size: 19,
                  color: Color(0xFF5D56F3),
                )),
            Obx(() {
              if (percentage == 0.0) {
                homePageController.isShowTextFilter.value = false;
              } else {
                Future.delayed(const Duration(milliseconds: 284), () {
                  homePageController.isShowTextFilter.value = true;
                });
              }
              return Container(
                padding: EdgeInsets.only(
                    left: homePageController.isShowTextFilter.value ? 5.0 : 0),
                child: Text(
                  homePageController.isShowTextFilter.value ? "Filters" : "",
                  style: const TextStyle(
                      fontFamily: airBnbCereal,
                      fontSize: 14,
                      color: Colors.white),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
