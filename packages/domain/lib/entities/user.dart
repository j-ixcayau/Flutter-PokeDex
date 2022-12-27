class User {
  final String email;

  User({
    required this.email,
  });

  @override
  String toString() {
    return 'email:$email';
  }
}
