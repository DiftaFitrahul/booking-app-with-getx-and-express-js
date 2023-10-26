import 'package:booking_app/view/functions/home/offsett_drawer_open.dart';
import 'package:get/get.dart';

class DrawerControllerGetx extends GetxController {
  RxBool isDrawerOpen = false.obs;
  RxDouble xOffset = 0.0.obs;
  RxDouble yOffset = 0.0.obs;
  RxDouble zOffset = 0.0.obs;
  RxDouble xOffsetNavigationBar = 0.0.obs;
  RxDouble yOffsetNavigationBar = 0.0.obs;
  RxDouble xOffsetFloatingActionButton = 0.0.obs;
  RxDouble yOffsetFloatingActionButton = 0.0.obs;

  void toggleDrawer(
      {required double widthScreen, required double heightScreen}) {
    isDrawerOpen.value = !isDrawerOpen.value;
    xOffset.value = isDrawerOpen.value ? 260 : 0;
    yOffset.value = isDrawerOpen.value ? 70 : 0;
    zOffset.value = isDrawerOpen.value ? 1500 : 0;
    xOffsetNavigationBar.value = isDrawerOpen.value ? 260 : 0;
    yOffsetNavigationBar.value =
        isDrawerOpen.value ? getOffsetNavigationBarDraweOpen(heightScreen) : 0;
    xOffsetFloatingActionButton.value =
        isDrawerOpen.value ? getOffseetFABDrawerOpen(widthScreen) : 0;
    yOffsetFloatingActionButton.value = isDrawerOpen.value ? -16 : 0;
  }
}
