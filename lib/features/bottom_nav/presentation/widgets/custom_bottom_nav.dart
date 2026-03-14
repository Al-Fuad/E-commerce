import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/bottom_nav/presentation/widgets/nav_bar_painter.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: CustomPaint(
        painter: NavBarPainter(color: AppColor.primaryColor),
        child: Row(
          children: [
            Expanded(
              child: _buildNavItem(
                icon: Icons.home_filled,
                isActive: currentIndex == 0,
                onTap: () => onTap(0),
              ),
            ),
            Expanded(
              child: _buildNavItem(
                icon: Icons.favorite_border_rounded,
                isActive: currentIndex == 1,
                onTap: () => onTap(1),
              ),
            ),
            // Space for FAB
            const SizedBox(width: 80),
            Expanded(
              child: _buildNavItem(
                icon: Icons.message_rounded,
                isActive: currentIndex == 2,
                onTap: () => onTap(2),
              ),
            ),
            Expanded(
              child: _buildNavItem(
                icon: Icons.person_outline_rounded,
                isActive: currentIndex == 3,
                onTap: () => onTap(3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isActive ? AppColor.white : AppColor.lightPrimaryColor, size: 24),
        ],
      ),
    );
  }
}
