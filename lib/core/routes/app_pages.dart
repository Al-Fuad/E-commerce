import 'package:get/get.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/add_product/presentation/bindings/add_post_binding.dart';
import 'package:test_project/features/add_product/presentation/views/add_post_screen.dart';
import 'package:test_project/features/auth/presentation/bindings/auth_binding.dart';
import 'package:test_project/features/auth/presentation/views/forgot_password_screen.dart';
import 'package:test_project/features/auth/presentation/views/signin_screen.dart';
import 'package:test_project/features/auth/presentation/views/signup_screen.dart';
import 'package:test_project/features/bottom_nav/presentation/bindings/bottom_nav_binding.dart';
import 'package:test_project/features/bottom_nav/presentation/views/bottom_nav.dart';
import 'package:test_project/features/category/presentation/bindings/category_binding.dart';
import 'package:test_project/features/category/presentation/views/category_screen.dart';
import 'package:test_project/features/chat/presentation/bindings/chat_binding.dart';
import 'package:test_project/features/chat/presentation/views/chat_screen.dart';
import 'package:test_project/features/inbox/presentation/bindings/inbox_binding.dart';
import 'package:test_project/features/inbox/presentation/views/inbox_screen.dart';
import 'package:test_project/features/onboarding/presentation/bindings/onboarding_binding.dart';
import 'package:test_project/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:test_project/features/product/presentation/bindings/product_binding.dart';
import 'package:test_project/features/product/presentation/views/product_screen.dart';
import 'package:test_project/features/product/presentation/widgets/bid_placed.dart';
import 'package:test_project/features/splash/views/splash_screen.dart';

class AppPages {
  const AppPages._();

  static final pages = <GetPage>[
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
      name: AppRoutes.bottomNav,
      page: () => const BottomNav(),
      binding: BottomNavBinding(),
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
      name: AppRoutes.bidPlaced,
      page: () => const BidPlaced(),
      binding: ProductBinding(),
    ),
  ];
}
