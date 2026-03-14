abstract class AuthRemoteDatasource {
  Future<void> signIn(String email, String password);
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
