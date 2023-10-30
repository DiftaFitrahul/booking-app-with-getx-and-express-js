import 'package:booking_app/getx/events/event.dart';
import 'package:booking_app/getx/home/appbar_controller.dart';
import 'package:booking_app/getx/home/open_drawer_controller.dart';
import 'package:booking_app/getx/main_page.dart';

import 'package:get/get.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppbarController());
    Get.lazyPut(() => DrawerControllerGetx());
    Get.lazyPut(() => MainPageController());
    Get.lazyPut(() => EventController());
  }
}
