import 'package:stylish/api/model/response/auth/user_dto.dart';
import '../../../../domain/entities/response/auth/user.dart';

extension UserMapper on UserDto {
  User toUser() {
    return User(
        email: email,
        name: name,
        role: role
    );
  }
}
