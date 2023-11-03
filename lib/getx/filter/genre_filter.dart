import 'package:get/get.dart';

class GenreFilter extends GetxController {
  RxBool isSports = false.obs;
  RxBool isMusic = false.obs;
  RxBool isFood = false.obs;
  RxBool isArt = false.obs;
  RxBool isLove = false.obs;
  RxBool isEducation = false.obs;

  void changeSports() {
    isSports.value = !isSports.value;
  }

  void changeMusic() {
    isMusic.value = !isMusic.value;
  }

  void changeFood() {
    isFood.value = !isFood.value;
  }

  void changeArt() {
    isArt.value = !isArt.value;
  }

  void changeLove() {
    isLove.value = !isLove.value;
  }

  void changeEducation() {
    isEducation.value = !isEducation.value;
  }
}
