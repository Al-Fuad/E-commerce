import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/common/widgets/app_text_field.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/auth/presentation/controllers/auth_controller.dart';
import 'package:test_project/features/auth/presentation/views/forgot_password_screen.dart';
import 'package:test_project/features/auth/presentation/views/signup_screen.dart';
import 'package:test_project/features/auth/presentation/widgets/auth_navigator.dart';
import 'package:test_project/features/auth/presentation/widgets/or_line.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
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
                "Sign Up to buy and sell",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              AppTextField(
                controller: emailController,
                label: "Email",
                hint: "Enter your email",
              ),
              SizedBox(height: 16),
              AppTextField(
                isObscureText: true,
                controller: passwordController,
                label: "Password",
                hint: "Enter your password",
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => ForgotPasswordScreen());
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ),
              SizedBox(height: 43),
              AppButton(
                text: "Sign In",
                onPressed: () async {
                  final isLogedIn = await authController.signIn(
                    emailController.text,
                    passwordController.text,
                  );
                  if (isLogedIn) {
                    Get.offAllNamed(AppRoutes.bottomNav);
                  } else {
                    Get.snackbar(
                      "Error",
                      "Invalid email or password",
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
              AuthNavigator(
                text: "Don't have an account?",
                actionText: "Sign Up",
                onTap: () {
                  Get.to(() => SignupScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
