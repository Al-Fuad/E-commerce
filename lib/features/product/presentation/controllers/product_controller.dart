import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isBidButtonPressed = false.obs;
  var isBidPlaced = false.obs;

  final PageController pageController = PageController();
  var currentImageIndex = 0.obs;

  void updateImageIndex(int index) {
    currentImageIndex.value = index;
  }
}
