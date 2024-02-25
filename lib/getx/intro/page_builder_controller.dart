import 'package:booking_app/getx/intro/indicator_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageBuilderController extends GetxController {
  final pageController = PageController();

  void nextIndex() {
    final currentNumber = Get.put(IndicatorNumber());
    if (currentNumber.currentNumber.value < 2) {
      pageController.animateToPage(
        currentNumber.currentNumber.value + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
