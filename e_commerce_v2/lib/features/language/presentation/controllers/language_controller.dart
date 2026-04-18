import 'package:get/get.dart';

class LanguageController extends GetxController {
  final RxInt selectedLanguageIndex = 0.obs;

  void changeLanguage(int index) {
    selectedLanguageIndex.value = index;
  }
}