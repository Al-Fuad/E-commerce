import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/common/widgets/app_text_field.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/auth/presentation/controllers/auth_controller.dart';
import 'package:test_project/features/auth/presentation/widgets/auth_action_text.dart';
import 'package:test_project/features/auth/presentation/widgets/auth_header.dart';
import 'package:test_project/features/auth/presentation/widgets/or_line.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController contactNumberController =
        TextEditingController();
    final TextEditingController locationController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authController = Get.find<AuthController>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthHeader(title: "Sign Up to buy and sell"),
              AppTextField(
                controller: firstNameController,
                label: "First name",
                hint: "Enter your first name",
              ),
              SizedBox(height: 16),
              AppTextField(
                controller: lastNameController,
                label: "Last name",
                hint: "Enter your last name",
              ),
              SizedBox(height: 16),
              AppTextField(
                controller: emailController,
                label: "Email",
                hint: "Enter your email",
              ),
              SizedBox(height: 16),
              AppTextField(
                controller: contactNumberController,
                keyboardType: TextInputType.phone,
                label: "Contact Number",
                hint: "Enter your contact number",
              ),
              SizedBox(height: 16),
              AppTextField(
                controller: locationController,
                label: "Location",
                hint: "Enter your location",
              ),
              SizedBox(height: 16),
              AppTextField(
                controller: passwordController,
                label: "Password",
                hint: "Enter your password",
              ),
              SizedBox(height: 43),
              AppButton(
                text: "Sign Up",
                onPressed: () async {
                  final isSignedUp = await authController.signUp(
                    firstNameController.text,
                    lastNameController.text,
                    emailController.text,
                    int.parse(
                      contactNumberController.text.isNotEmpty
                          ? contactNumberController.text
                          : "0",
                    ),
                    locationController.text,
                    passwordController.text,
                  );
                  if (isSignedUp) {
                    Get.toNamed(AppRoutes.otp);
                  } else {
                    Get.snackbar(
                      "Error",
                      "Failed to sign up. Please try again.",
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  }
                },
              ),
              SizedBox(height: 24),
              OrLine(),
              SizedBox(height: 44),
              AppButton(
                icon: Image.asset(AppAssets.googleLogo),
                text: "Sign Up with Google",
                color: Color(0xFFf7f7f7),
                textColor: AppColor.textColor,
                onPressed: () {
                  // TODO: Handle sign up logic here
                },
              ),
              SizedBox(height: 16),
              AppButton(
                icon: Image.asset(AppAssets.appleLogo),
                text: "Sign Up with Apple",
                color: Color(0xFFf7f7f7),
                textColor: AppColor.textColor,
                onPressed: () {
                  // TODO: Handle sign up logic here
                },
              ),
              SizedBox(height: 16),
              AppButton(
                icon: Image.asset(AppAssets.microsoftLogo),
                text: "Sign Up with Microsoft",
                color: Color(0xFFf7f7f7),
                textColor: AppColor.textColor,
                onPressed: () {
                  // TODO: Handle sign up logic here
                },
              ),
              SizedBox(height: 16),
              AuthActionText(
                text: "Already have an account?",
                actionText: "Sign In",
                onTap: () {
                  Get.toNamed(AppRoutes.signIn);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
