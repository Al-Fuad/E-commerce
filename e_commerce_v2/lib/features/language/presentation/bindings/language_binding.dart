import 'package:get/get.dart';
import 'package:test_project/features/language/presentation/controllers/language_controller.dart';

class LanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguageController>(() => LanguageController());
  }
}
