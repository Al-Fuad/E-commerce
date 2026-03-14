import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/onboarding/presentation/views/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color(0xFFde3526),
      splash: Image.asset(AppAssets.logoWhite),
      nextRoute: AppRoutes.onboarding,
      nextScreen: const OnboardingScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      splashIconSize: 300,
      duration: 1000,
    );
  }
}
