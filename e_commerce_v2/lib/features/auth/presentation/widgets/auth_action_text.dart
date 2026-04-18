import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class AuthActionText extends StatelessWidget {
  const AuthActionText({
    super.key,
    required this.text,
    required this.actionText,
    required this.onTap,
    this.isOtpScreen = false,
  });

  final String text;
  final String actionText;
  final VoidCallback onTap;
  final bool isOtpScreen;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyle(color: AppColor.textColor)),
        SizedBox(width: 8),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
