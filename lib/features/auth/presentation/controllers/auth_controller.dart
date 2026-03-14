import 'package:get/get.dart';
import 'package:test_project/features/auth/domain/usecases/forgot_password_usecase.dart';
import 'package:test_project/features/auth/domain/usecases/signin_usecase.dart';
import 'package:test_project/features/auth/domain/usecases/signup_usecase.dart';

class AuthController extends GetxController {
  final SigninUsecase signinUsecase;
  final SignupUsecase signupUsecase;
  final ForgotPasswordUsecase forgotPasswordUsecase;


  AuthController({
    required this.signinUsecase,
    required this.signupUsecase,
    required this.forgotPasswordUsecase,
  });

  Future<void> signIn(String email, String password) async {
    await signinUsecase.execute(email, password);
  }

  Future<void> signUp(
    String firstName,
    String lastName,
    String email,
    int phone,
    String location,
    String password,
  ) async {
    await signupUsecase.execute(
      firstName,
      lastName,
      email,
      phone,
      location,
      password,
    );
  }

  Future<void> forgotPassword(String email) async {
    await forgotPasswordUsecase.execute(email);
  }
}
