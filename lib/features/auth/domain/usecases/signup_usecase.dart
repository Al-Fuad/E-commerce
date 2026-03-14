import 'package:test_project/features/auth/domain/repositories/auth_repository.dart';

class SignupUsecase {
  final AuthRepository repository;

  SignupUsecase(this.repository);

  Future<void> execute(
    String firstName,
    String lastName,
    String email,
    int contactNumber,
    String location,
    String password,
  ) async {
    return await repository.signUp(
      firstName,
      lastName,
      email,
      contactNumber,
      location,
      password,
    );
  }
}
