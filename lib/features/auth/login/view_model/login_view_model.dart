import 'package:flutter/widgets.dart';

class LoginViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(BuildContext context) {
    if (formKey.currentState?.validate() != true) {
      return;
    }

    final email = emailController.text.trim();
    final password = passwordController.text.trim();
  }
}
