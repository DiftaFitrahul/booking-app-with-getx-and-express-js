import 'package:booking_app/getx/profile/organizer.dart';
import 'package:get/get.dart';

class OrganizerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrganizerController());
  }
}
