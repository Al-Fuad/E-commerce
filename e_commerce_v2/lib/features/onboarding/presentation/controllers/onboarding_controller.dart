import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final currentIndex = 0.obs;

  Future<void> goToNextPage() async {
    currentIndex.value += 1;
  }
}
