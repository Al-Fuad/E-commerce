abstract class AuthRepository {
  Future<bool> signIn(String email, String password);
  Future<bool> signUp(
    String firstName,
    String lastName,
    String email,
    int contactNumber,
    String location,
    String password,
  );
  Future<bool> forgotPassword(String email);
}
