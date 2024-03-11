import 'package:flutter/material.dart';
import 'package:linstant_app/forms/login_form.dart';
import 'package:linstant_app/widgets/main_gradient_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: MainGradientContainer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/linstant_logo.png',
                  height: MediaQuery.of(context).devicePixelRatio + 150,
                ),
                const LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
