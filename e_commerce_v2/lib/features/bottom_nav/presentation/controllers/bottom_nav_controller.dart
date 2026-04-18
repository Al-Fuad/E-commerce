import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var currentIndex = 0.obs;

  void updateCurrentIndex(int index) {
    currentIndex.value = index;
  }
}