import 'package:booking_app/constants/intro_image.dart';
import 'package:get/get.dart';

class ImageController extends GetxController {
  RxList<String> imagePath = <String>[
    ImageIntro.imageIntro1,
    ImageIntro.imageIntro2,
    ImageIntro.imageIntro3
  ].obs;
}
