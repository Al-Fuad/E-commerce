import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/auth/presentation/widgets/auth_action_text.dart';
import 'package:test_project/features/auth/presentation/widgets/auth_header.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final previousRouteName = Get.previousRoute;
    final otpController = OtpFieldController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            if (previousRouteName == '/SignupScreen') ...[
              AuthHeader(
                title: "Verify your email",
                subtitle:
                    "We emailed you the six digit code to verify your account. Enter the code below to confirm your email.",
              ),
            ] else ...[
              AuthHeader(
                title: "Check you email",
                subtitle:
                    "We sent a reset link to abc...@gmail.com enter 6 digit code that mentioned in the email",
              ),
            ],
            OTPTextField(
              controller: otpController,
              length: 6,
              width: double.infinity,
              fieldWidth: 50,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
            ),
            SizedBox(height: 45),
            AppButton(
              text: "Verify OTP",
              onPressed: () {
                if (previousRouteName == '/SignupScreen') {
                  Get.toNamed(AppRoutes.authMessage);
                } else {
                  Get.toNamed(AppRoutes.resetPassword);
                }
              },
            ),
            SizedBox(height: 16),
            AuthActionText(
              text: "Haven’t got the email yet? ",
              actionText: "Resend OTP",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
