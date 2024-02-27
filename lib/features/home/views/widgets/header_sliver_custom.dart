import 'package:booking_app/getx/home/appbar_controller.dart';
import 'package:booking_app/getx/home/open_drawer_controller.dart';
import 'package:booking_app/view/components/home/filter_appbar.dart';
import 'package:booking_app/view/components/home/list_category_appbar.dart';
import 'package:booking_app/view/components/home/search_appbar.dart';
import 'package:booking_app/view/components/home/top_widget_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSliverAppbar extends SliverPersistentHeaderDelegate {
  final homePageController = Get.find<AppbarController>();
  final drawerController = Get.find<DrawerControllerGetx>();
  static const _maxExtent = 207.0;
  static const _minExtent = 160.0;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double percentage =
        ((_maxExtent - shrinkOffset - _minExtent) / (_maxExtent - _minExtent))
            .clamp(0, 1);

    return Obx(() {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF4A43EC),
          borderRadius: BorderRadius.only(
            topLeft:
                Radius.circular(drawerController.isDrawerOpen.value ? 33.0 : 0),
            topRight:
                Radius.circular(drawerController.isDrawerOpen.value ? 33.0 : 0),
            bottomLeft: Radius.circular(33.0 - 33 * (1 - percentage)),
            bottomRight: Radius.circular(33.0 - 33 * (1 - percentage)),
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            TopWidgetAppbar(percentage: percentage),
            SearchAppbar(percentage: percentage),
            FilterAppbar(percentage: percentage),
            ListCategoryAppbar(percentage: percentage),
          ],
        ),
      );
    });
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
