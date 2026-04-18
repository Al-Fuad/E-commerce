import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/common/widgets/app_text_field.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/auth/presentation/controllers/auth_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final authController = Get.find<AuthController>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 61),
              Image.asset(AppAssets.logo, height: 88),
              SizedBox(height: 24),
              Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Enter your email to receive password reset instructions",
                style: TextStyle(color: AppColor.textColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              AppTextField(
                controller: emailController,
                label: "Email",
                hint: "Enter your email",
              ),
              SizedBox(height: 43),
              AppButton(
                text: "Send OTP",
                onPressed: () async {
                  final isForgotPassword = await authController.forgotPassword(
                    emailController.text,
                  );
                  if (isForgotPassword) {
                    Get.toNamed(AppRoutes.otp);
                  } else {
                    Get.snackbar(
                      "Error",
                      "Failed to send OTP. Please try again.",
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
