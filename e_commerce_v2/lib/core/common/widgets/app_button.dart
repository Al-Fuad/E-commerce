import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color = AppColor.primaryColor,
    this.textColor = AppColor.white,
    this.icon,
    this.size,
    this.isBordered = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final Color textColor;
  final Widget? icon;
  final Size? size;
  final bool isBordered;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size?.width ?? double.infinity,
      height: size?.height ?? 50,
      child: ElevatedButton(
        onPressed: () {
          print("Button start: $text");
          onPressed!();
          print("Button pressed: $text");
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: isBordered
                ? BorderSide(color: textColor)
                : BorderSide(color: AppColor.transparent),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? SizedBox.shrink(),
            if (icon != null) SizedBox(width: 8),
            Text(text, style: TextStyle(color: textColor, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
