import 'package:booking_app/view/constants/home/icon.dart';
import 'package:flutter/material.dart';

class TopWidgetAppbar extends StatelessWidget {
  const TopWidgetAppbar({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Image.asset(HomeIcon.menu),
                  onPressed: () {},
                ),
                AnimatedOpacity(
                  opacity: percentage,
                  duration: const Duration(milliseconds: 100),
                  child: InkWell(
                      onTap: percentage < 0.8 ? null : () {},
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [],
                          ),
                          const Text('Air BnB')
                        ],
                      )),
                ),
                percentage == 0.0
                    ? const SizedBox()
                    : IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
              ],
            ),
          ),
        ));
  }
}
