import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import './login_controller.dart';

import '../../shared/input_widget.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  LoginController _controller = LoginController();

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundImage(),
          _contentPage()
        ],
      )
   );
  }

  Widget _contentPage() {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: SizedBox()
        ),
        Expanded(
          flex: 6,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: [
                _loginForm(),
                const SizedBox(height: 16),
                _registerButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _backgroundImage() {
    return Container(
      color: Colors.black45,
    );
  }

  Widget _loginForm() {
    return Column(
      children: [
        const SizedBox(height: 16),
        const Text(
          'Login',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        InputWidget(
          label: 'Email',
          hint: 'Introduce tu email',
          controller: _controller.emailController,
        ),
        const SizedBox(height: 16),
        InputWidget(
          label: 'Password',
          hint: 'Introduce tu contraseña',
          obscureText: true,
          controller: _controller.passwordController,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _controller.login,
          child: const Text('Iniciar sesión'),
        ),
      ]);
    }

    Widget _registerButton() {
      return TextButton(
        onPressed: _controller.goToRegisterPage,
        child: const Text('Registrarse'),
      );
    }
  }