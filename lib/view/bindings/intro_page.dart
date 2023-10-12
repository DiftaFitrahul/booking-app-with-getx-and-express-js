import 'package:booking_app/getx/intro/indicator_number.dart';
import 'package:booking_app/getx/intro/page_builder_controller.dart';
import 'package:get/get.dart';

class IntroPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageBuilderController());
    Get.lazyPut(() => IndicatorNumber());
  }
}
