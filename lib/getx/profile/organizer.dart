import 'package:booking_app/view/constants/profile/organizer.dart';
import 'package:get/get.dart';

class OrganizerController extends GetxController {
  Rx<OrganizerNavBarItem> navbarSelected = OrganizerNavBarItem.about.obs;

  void changeNavBarSelected(OrganizerNavBarItem item) {
    navbarSelected.value = item;
  }
}
