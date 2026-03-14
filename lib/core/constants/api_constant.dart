import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstant {
  static final baseUrl = dotenv.env['API_URL'] ?? 'http://localhost:5000';
  static final String register = '/auth/register';
  static final String login = '/auth/login';
  static final String forgotPassword = '/auth/forgot-password';
  static final String resetPassword = '/auth/reset-password';
  static final String getMe = '/auth/me';

  static final String allCategories = '/category/allCategories';
}
