import 'package:test_project/features/auth/domain/repositories/auth_repository.dart';

class SigninUsecase {
  final AuthRepository repository;

  SigninUsecase(this.repository);

  Future<void> execute(String email, String password) async {
    return await repository.signIn(email, password);
  }
}
