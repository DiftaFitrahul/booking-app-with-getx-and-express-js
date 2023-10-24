import 'package:booking_app/getx/home/appbar_controller.dart';
import 'package:booking_app/view/components/home/filter_appbar.dart';
import 'package:booking_app/view/components/home/search_appbar.dart';
import 'package:booking_app/view/components/home/top_widget_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSliverAppbar extends SliverPersistentHeaderDelegate {
  final homePageController = Get.find<AppbarController>();
  static const _maxExtent = 225.0;
  static const _minExtent = 140.0;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double percentage =
        ((_maxExtent - shrinkOffset - _minExtent) / (_maxExtent - _minExtent))
            .clamp(0, 1);
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Color(0xFF4A43EC),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0 - 30 * (1 - percentage)),
          bottomRight: Radius.circular(30.0 - 30 * (1 - percentage)),
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          TopWidgetAppbar(percentage: percentage),
          SearchAppbar(percentage: percentage),
          FilterAppbar(percentage: percentage),
          Align(
            alignment: Alignment.bottomCenter,
            child: Transform.translate(
              offset: Offset(0, 15.0 - 15 * (1 - percentage)),
              child: ElevatedButton(
                child: const Text("Click Here"),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
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
