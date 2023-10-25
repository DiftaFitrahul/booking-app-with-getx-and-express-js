import 'package:get/get.dart';

class DrawerControllerGetx extends GetxController {
  RxBool isDrawerOpen = false.obs;

  void toggleDrawer() {
    isDrawerOpen.value = !isDrawerOpen.value;
  }
}
