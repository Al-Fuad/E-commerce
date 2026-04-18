import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/success_msg.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/add_product/presentation/bindings/add_post_binding.dart';
import 'package:test_project/features/add_product/presentation/views/add_post_screen.dart';
import 'package:test_project/features/auth/presentation/bindings/auth_binding.dart';
import 'package:test_project/features/auth/presentation/views/auth_message.dart';
import 'package:test_project/features/auth/presentation/views/forgot_password_screen.dart';
import 'package:test_project/features/auth/presentation/views/otp_screen.dart';
import 'package:test_project/features/auth/presentation/views/reset_password_screen.dart';
import 'package:test_project/features/auth/presentation/views/signin_screen.dart';
import 'package:test_project/features/auth/presentation/views/signup_screen.dart';
import 'package:test_project/features/bottom_nav/presentation/bindings/bottom_nav_binding.dart';
import 'package:test_project/features/bottom_nav/presentation/views/bottom_nav.dart';
import 'package:test_project/features/bought_bid_items/presentation/bindings/bought_bid_items_bindings.dart';
import 'package:test_project/features/bought_bid_items/presentation/views/bought_bid_items_screen.dart';
import 'package:test_project/features/category/presentation/bindings/category_binding.dart';
import 'package:test_project/features/category/presentation/views/category_screen.dart';
import 'package:test_project/features/chat/presentation/bindings/chat_binding.dart';
import 'package:test_project/features/chat/presentation/views/chat_screen.dart';
import 'package:test_project/features/inbox/presentation/bindings/inbox_binding.dart';
import 'package:test_project/features/inbox/presentation/views/inbox_screen.dart';
import 'package:test_project/features/language/presentation/bindings/language_binding.dart';
import 'package:test_project/features/language/presentation/views/language_screen.dart';
import 'package:test_project/features/notifications/presentation/bindings/notifications_binding.dart';
import 'package:test_project/features/notifications/presentation/views/notifications_screen.dart';
import 'package:test_project/features/onboarding/presentation/bindings/onboarding_binding.dart';
import 'package:test_project/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:test_project/features/product/presentation/bindings/product_binding.dart';
import 'package:test_project/features/product/presentation/views/product_screen.dart';
import 'package:test_project/features/sell_items/presentation/bindings/sell_items_bindings.dart';
import 'package:test_project/features/sell_items/presentation/views/sell_items_screen.dart';
import 'package:test_project/features/splash/views/splash_screen.dart';

class AppPages {
  const AppPages._();

  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SigninScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignupScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => const ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.otp,
      page: () => const OtpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.resetPassword,
      page: () => const ResetPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.authMessage,
      page: () => const AuthMessage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.bottomNav,
      page: () => const BottomNav(),
      binding: BottomNavBinding(),
    ),
    GetPage(
      name: AppRoutes.notifications,
      page: () => const NotificationsScreen(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: AppRoutes.category,
      page: () {
        final args = (Get.arguments is Map)
            ? Map<String, dynamic>.from(Get.arguments as Map)
            : <String, dynamic>{};
        final title = args['title'] as String? ?? "Category";
        return CategoryScreen(title: title);
      },
      binding: CategoryBinding(),
    ),
    GetPage(
      name: AppRoutes.product,
      page: () {
        final args = (Get.arguments is Map)
            ? Map<String, dynamic>.from(Get.arguments as Map)
            : <String, dynamic>{};
        final isBid = args['isBid'] as bool? ?? false;
        final isBidPlaced = args['isBidPlaced'] as bool? ?? false;
        return ProductScreen(isBid: isBid, isBidPlaced: isBidPlaced);
      },
      binding: ProductBinding(),
    ),
    GetPage(
      name: AppRoutes.addPost,
      page: () => const AddPostScreen(),
      binding: AddPostBinding(),
    ),
    GetPage(
      name: AppRoutes.inbox,
      page: () => const InboxScreen(),
      binding: InboxBinding(),
    ),
    GetPage(
      name: AppRoutes.chat,
      page: () => const ChatScreen(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: AppRoutes.successMsg,
      page: () {
        final args = (Get.arguments is Map)
            ? Map<String, dynamic>.from(Get.arguments as Map)
            : <String, dynamic>{};
        final title = args['title'] as String? ?? "Success";
        final description =
            args['description'] as String? ?? "Your action was successful.";
        final buttonText = args['buttonText'] as String? ?? "OK";
        final onPressed = args['onPressed'] as VoidCallback? ?? () {};
        return SuccessMsg(
          title: title,
          description: description,
          buttonText: buttonText,
          onPressed: onPressed,
        );
      },
      binding: ProductBinding(),
    ),

    GetPage(
      name: AppRoutes.boughtBidItems,
      page: () {
        final args = (Get.arguments is Map)
            ? Map<String, dynamic>.from(Get.arguments as Map)
            : <String, dynamic>{};
        final isBidList = args['isBidList'] as bool? ?? false;
        return BoughtBidItemsScreen(isBidList: isBidList);
      },
      binding: BoughtBidItemsBindings(),
    ),
    GetPage(
      name: AppRoutes.sellingItems,
      page: () => const SellItemsScreen(),
      binding: SellItemsBindings(),
    ),
    GetPage(
      name: AppRoutes.language,
      page: () => const LanguageScreen(),
      binding: LanguageBinding(),
    ),
  ];
}
