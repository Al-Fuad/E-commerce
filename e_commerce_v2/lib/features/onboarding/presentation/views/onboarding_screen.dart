import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/onboarding/presentation/controllers/onboarding_controller.dart';
import 'package:test_project/features/onboarding/presentation/models/onboarding_model.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      onboardingData[controller.currentIndex.value].title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      onboardingData[controller.currentIndex.value].description,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      clipBehavior: Clip.none,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            onboardingData[controller.currentIndex.value].image,
                            width: 340,
                            height: 340,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: -25,
                          child: AppButton(
                            size: const Size(200, 50),
                            text:
                                controller.currentIndex.value ==
                                    onboardingData.length - 1
                                ? 'Get Started'
                                : 'Next',
                            onPressed: () {
                              if (controller.currentIndex.value ==
                                  onboardingData.length - 1) {
                                Get.offNamed(AppRoutes.signIn);
                              } else {
                                controller.goToNextPage();
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                AppAssets.onboardingImages.length,
                (index) => Obx(
                  () => Container(
                    height: 7,
                    width: controller.currentIndex.value == index ? 20 : 10,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: controller.currentIndex.value == index
                          ? AppColor.primaryColor
                          : AppColor.lightPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
