import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.title,
    required this.seeAllFunction,
    required this.child,
  });
  final String title;
  final VoidCallback seeAllFunction;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            GestureDetector(
              onTap: seeAllFunction,
              child: Text(
                "See All",
                style: TextStyle(fontSize: 12, color: AppColor.primaryColor),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        child,
      ],
    );
  }
}
