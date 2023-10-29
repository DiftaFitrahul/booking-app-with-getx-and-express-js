import 'package:get/get.dart';

class MainPageController extends GetxController {
  RxInt currentIndexPage = 0.obs;

  void changePage(int index) {
    currentIndexPage.value = index;
  }
}
