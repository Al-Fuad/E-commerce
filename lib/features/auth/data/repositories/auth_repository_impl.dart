import 'package:test_project/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:test_project/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource authRemoteDatasource;

  AuthRepositoryImpl({required this.authRemoteDatasource});

  @override
  Future<void> signIn(String email, String password) async {
    return await authRemoteDatasource.signIn(email, password);
  }

  @override
  Future<void> signUp(
    String firstName,
    String lastName,
    String email,
    int contactNumber,
    String location,
    String password,
  ) async {
    return await authRemoteDatasource.signUp(
      firstName,
      lastName,
      email,
      contactNumber,
      location,
      password,
    );
  }

  @override
  Future<void> forgotPassword(String email) async {
    return await authRemoteDatasource.forgotPassword(email);
  }
}
