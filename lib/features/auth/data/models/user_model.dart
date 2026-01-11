import '../../domain/entities/user.dart';

class UserModel extends UserEntity {
  UserModel({required super.id, required super.phone});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(id: json['id'], phone: json['phone']);
  }
}
