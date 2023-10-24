import 'package:booking_app/getx/home/appbar_controller.dart';

import 'package:get/get.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppbarController());
  }
}
