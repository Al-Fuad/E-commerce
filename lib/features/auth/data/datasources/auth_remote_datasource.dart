import 'package:test_project/features/auth/data/models/auth_model.dart';

abstract class AuthRemoteDatasource {
  Future<AuthModel> signIn(String email, String password);
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
