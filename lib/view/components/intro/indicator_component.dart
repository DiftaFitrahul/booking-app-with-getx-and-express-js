import 'package:flutter/material.dart';

class IndicatorComponent extends StatelessWidget {
  final int currentIndex;
  const IndicatorComponent({super.key, required this.currentIndex,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        3,
        (index) => AnimatedContainer(
          duration: const Duration(microseconds: 200),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white : Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 7),
        ),
      ),
    );
  }
}
