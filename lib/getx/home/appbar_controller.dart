import 'package:get/get.dart';

class AppbarController extends GetxController {
  RxBool isShowTextFilter = true.obs;

  void toggleShowFilter() {
    isShowTextFilter.value = !isShowTextFilter.value;
  }
}
