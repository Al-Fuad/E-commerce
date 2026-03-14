import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/features/onboarding/presentation/models/onboarding_model.dart';

class OnboardingController extends GetxController {
  final currentIndex = 0.obs;
  final pageController = PageController();

  void updateCurrentIndex(int index) {
    currentIndex.value = index;
  }

  Future<void> goToNextPage() async {
    if (currentIndex.value >= onboardingData.length - 1) {
      return;
    }

    await pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
