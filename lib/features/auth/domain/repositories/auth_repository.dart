abstract class AuthRepository {
  Future<void> loginWithPhone(String phone);
  Future<void> verifyOtp(String otp);
}
