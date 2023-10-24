import 'package:booking_app/getx/home/appbar_controller.dart';
import 'package:booking_app/view/components/home/filter_appbar.dart';
import 'package:booking_app/view/components/home/search_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSliverAppbar extends SliverPersistentHeaderDelegate {
  final homePageController = Get.find<AppbarController>();
  static const _maxExtent = 225.0;
  static const _minExtent = 150.0;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double percentage =
        ((_maxExtent - shrinkOffset - _minExtent) / (_maxExtent - _minExtent))
            .clamp(0, 1);
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0 - 30 * (1 - percentage)),
          bottomRight: Radius.circular(30.0 - 30 * (1 - percentage)),
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    AnimatedOpacity(
                      opacity: percentage,
                      duration: const Duration(milliseconds: 100),
                      child: InkWell(
                        onTap: percentage < 0.8 ? null : () {},
                        child: const Text(
                          "Home",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    percentage == 0.0
                        ? const SizedBox()
                        : IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {},
                          ),
                  ],
                ),
              )),
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
