import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/onboarding/presentation/controllers/onboarding_controller.dart';
import 'package:test_project/features/onboarding/presentation/models/onboarding_model.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 61,
          bottom: 20,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: PageView.builder(
                controller: controller.pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  controller.updateCurrentIndex(value);
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        onboardingData[index].title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onboardingData[index].description,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 50),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              onboardingData[index].image,
                              width: 350,
                              height: 350,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: -25,

                            child: AppButton(
                              size: const Size(200, 50),
                              text: index == onboardingData.length - 1
                                  ? 'Get Started'
                                  : 'Next',
                              onPressed: () {
                                if (index == onboardingData.length - 1) {
                                  Get.offAllNamed(AppRoutes.signIn);
                                } else {
                                  controller.goToNextPage();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
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
