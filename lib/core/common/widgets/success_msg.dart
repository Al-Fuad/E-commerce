import 'package:flutter/material.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/constants/app_color.dart';

class SuccessMsg extends StatelessWidget {
  const SuccessMsg({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
  });

  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: onPressed),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 200),
        child: Card(
          color: AppColor.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColor.primaryColor,
                  child: Icon(
                    Icons.check_circle,
                    color: AppColor.lightPrimaryColor,
                    size: 80,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                SizedBox(height: 24),
                AppButton(text: buttonText, onPressed: onPressed),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
