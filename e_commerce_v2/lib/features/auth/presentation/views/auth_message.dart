import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/auth/presentation/widgets/auth_header.dart';

class AuthMessage extends StatelessWidget {
  const AuthMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final previousRouteName = Get.previousRoute;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            if (previousRouteName == AppRoutes.forgotPassword) ...[
              AuthHeader(
                title: "Password reset successful",
                subtitle:
                    "Your password has been successfully reset. click confirm to set a new password",
              ),
            ] else if (previousRouteName == AppRoutes.otp) ...[
              AuthHeader(
                title: "Account created successfully",
                subtitle:
                    "Your account has been successfully created. click confirm to sign in",
              ),
            ],
            SizedBox(height: 32),
            AppButton(
              text: "Confirm",
              onPressed: () {
                Get.offAllNamed(AppRoutes.signIn);
              },
            ),
          ],
        ),
      ),
    );
  }
}
