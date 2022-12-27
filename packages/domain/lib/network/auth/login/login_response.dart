import 'package:domain/entities/user.dart';

class LoginResponse {
  LoginResponse({
    required this.user,
  });

  final User user;

  @override
  String toString() {
    return user.toString();
  }
}
