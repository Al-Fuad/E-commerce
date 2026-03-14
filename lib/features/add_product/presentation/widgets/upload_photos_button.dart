import 'package:flutter/material.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/constants/app_color.dart';

class UploadPhotosButton extends StatelessWidget {
  const UploadPhotosButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.secondaryBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: AppButton(
                isBordered: true,
                color: AppColor.secondaryBackground,
                textColor: AppColor.primaryColor,
                icon: Icon(
                  Icons.add_box_outlined,
                  color: AppColor.primaryColor,
                ),
                text: "Upload Photos",
                onPressed: onPressed,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Add up to 20 photos",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
