import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/core/constants/api_constant.dart';
import 'package:test_project/features/auth/data/datasources/auth_remote_datasource.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasourceImpl({required this.dio});

  @override
  Future<bool> signIn(String email, String password) async {
    return true;
    try {
      final response = await dio.post(
        ApiConstant.login,
        data: {'email': email, 'password': password},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final token = response.data['authorization']['access_token'];
        if (token != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('auth_token', token);
          return true;
        }
      }
      return false;
    } catch (e) {
      print('Error during sign-in: $e');
      return false;
    }
  }

  @override
  Future<bool> signUp(
    String firstName,
    String lastName,
    String email,
    int contactNumber,
    String location,
    String password,
  ) async {
    return true;
    try {
      final response = await dio.post(
        ApiConstant.register,
        data: {
          'first_name': firstName,
          'last_name': lastName,
          'email': email,
          'contact_number': contactNumber,
          'location': location,
          'password': password,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Sign Up Response: ${response.statusCode} - ${response.data}');
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error during sign-up: $e');
      return false;
    }
  }

  @override
  Future<bool> forgotPassword(String email) async {
    return true;
    try {
      final response = await dio.post(
        ApiConstant.forgotPassword,
        data: {'email': email},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(
          'Forgot Password Response: ${response.statusCode} - ${response.data}',
        );
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error during forgot password: $e');
      return false;
    }
  }
}
