import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/add_product/presentation/views/add_post_screen.dart';
import 'package:test_project/features/bottom_nav/presentation/controllers/bottom_nav_controller.dart';
import 'package:test_project/features/bottom_nav/presentation/widgets/custom_bottom_nav.dart';
import 'package:test_project/features/home/presentation/views/home_screen.dart';
import 'package:test_project/features/inbox/presentation/views/inbox_screen.dart';
import 'package:test_project/features/profile/presentation/views/profile_screen.dart';
import 'package:test_project/features/wishlist/presentation/views/wishlist_screen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavControllers = Get.put(BottomNavController());

    return Scaffold(
      extendBody: true,
      body: Obx(() {
        switch (bottomNavControllers.currentIndex.value) {
          case 0:
            return HomeScreen();
          case 1:
            return WishlistScreen();
          case 2:
            return InboxScreen();
          case 3:
            return ProfileScreen();
          default:
            return HomeScreen();
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddPostScreen());
        },
        shape: const CircleBorder(),
        backgroundColor: AppColor.primaryColor,
        elevation: 8,
        child: const Icon(Icons.add, color: AppColor.white, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() {
        return CustomBottomNav(
          currentIndex: bottomNavControllers.currentIndex.value,
          onTap: bottomNavControllers.updateCurrentIndex,
        );
      }),
    );
  }
}
