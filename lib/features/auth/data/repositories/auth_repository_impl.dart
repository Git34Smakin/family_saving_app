import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<void> loginWithPhone(String phone) async {}

  @override
  Future<void> verifyOtp(String otp) async {}
}
