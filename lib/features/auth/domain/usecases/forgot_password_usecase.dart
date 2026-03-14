import 'package:test_project/features/auth/data/repositories/auth_repository_impl.dart';

class ForgotPasswordUsecase {
  final AuthRepositoryImpl authRepository;

  ForgotPasswordUsecase(this.authRepository);

  Future<void> call(String email) async {
    await authRepository.forgotPassword(email);
  }
}