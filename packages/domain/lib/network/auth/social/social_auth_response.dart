import 'package:domain/entities/user.dart';

class SocialAuthResponse {
  SocialAuthResponse({
    required this.user,
  });

  final User user;

  @override
  String toString() {
    return user.toString();
  }
}
