import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_text.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: AppAssets.onboarding1,
    title: AppText.onboardingTitle1,
    description: AppText.onboardingDesc1,
  ),
  OnboardingModel(
    image: AppAssets.onboarding2,
    title: AppText.onboardingTitle2,
    description: AppText.onboardingDesc2,
  ),
  OnboardingModel(
    image: AppAssets.onboarding3,
    title: AppText.onboardingTitle3,
    description: AppText.onboardingDesc3,
  ),
];