import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/common/widgets/app_text_field.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/auth/presentation/widgets/auth_header.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AuthHeader(
              title: "Set a new password",
              subtitle:
                  "Create a new password. Ensure it differs from previous ones for security",
            ),
            AppTextField(
              controller: passwordController,
              isObscureText: true,
              label: "New Password",
              hint: "Enter your password",
            ),
            SizedBox(height: 16),
            AppTextField(
              controller: confirmPasswordController,
              isObscureText: true,
              label: "Confirm Password",
              hint: "Re-enter password",
            ),
            SizedBox(height: 43),
            AppButton(
              text: "Update Password",
              onPressed: () {
                Get.toNamed(AppRoutes.authMessage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
