import 'package:flutter/material.dart';
class LoginController {
  BuildContext? context;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void>? init(BuildContext context) {
    this.context = context;
  }

  void goToRegisterPage() {
    if(context != null) Navigator.pushNamed(context!, 'register');
  }

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email: $email');
    print('Password: $password');
  }

}