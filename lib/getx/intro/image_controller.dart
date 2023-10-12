import 'package:booking_app/view/constants/intro_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageController extends GetxController {
  RxList<Image> imageIntro = <Image>[
    Image.asset(ImageIntro.imageIntro1),
    Image.asset(ImageIntro.imageIntro2),
    Image.asset(ImageIntro.imageIntro3)
  ].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
