import 'package:test_project/features/auth/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  Future<AuthEntity> signIn(String email, String password);
  Future<void> signUp(
    String firstName,
    String lastName,
    String email,
    int contactNumber,
    String location,
    String password,
  );
  Future<void> forgotPassword(String email);
}
