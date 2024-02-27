import 'dart:ui';
import 'package:booking_app/getx/home/appbar_controller.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/pages/search/filter_genre_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterAppbar extends StatelessWidget {
  const FilterAppbar({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.sizeOf(context).height;
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
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.black.withOpacity(0.95),
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => Container(
                height: heightScreen * 0.87,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.7, sigmaY: 2.7),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: heightScreen * 0.848,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 26,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(2.5),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 22.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Filter',
                                  style: TextStyle(
                                    fontFamily: airBnbCereal,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const FilterGenreSection()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
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
                      left:
                          homePageController.isShowTextFilter.value ? 5.0 : 0),
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
      ),
    );
  }
}
