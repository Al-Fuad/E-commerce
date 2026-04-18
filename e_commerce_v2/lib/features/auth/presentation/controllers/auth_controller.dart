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

  Future<bool> signIn(String email, String password) async {
    return await signinUsecase(email, password);
  }

  Future<bool> signUp(
    String firstName,
    String lastName,
    String email,
    int phone,
    String location,
    String password,
  ) async {
    return await signupUsecase(
      firstName,
      lastName,
      email,
      phone,
      location,
      password,
    );
  }

  Future<bool> forgotPassword(String email) async {
    return await forgotPasswordUsecase(email);
  }
}
