import 'package:flutter/material.dart';
import 'package:test_project/core/common/widgets/app_text_field.dart';
import 'package:test_project/core/constants/app_color.dart';

class MessageBar extends StatelessWidget {
  const MessageBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(20),
      child: AppTextField(
        hint: "Write a message here...",
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.attachment_rounded),
              SizedBox(width: 8),
              Icon(Icons.location_on_outlined),
              SizedBox(width: 8),
              CircleAvatar(
                backgroundColor: AppColor.primaryColor,
                child: Icon(Icons.send, color: AppColor.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
