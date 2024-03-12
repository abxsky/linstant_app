import 'package:flutter/material.dart';
import 'package:linstant_app/forms/register_form.dart';
import 'package:linstant_app/widgets/main_gradient_container.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Inscription',
            style: TextStyle(fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          backgroundColor: const Color.fromARGB(255, 182, 255, 170),
          shadowColor: Colors.black,
          centerTitle: true,
        ),
        body: MainGradientContainer(
            child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                'assets/images/register_background.png',
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).devicePixelRatio * 60),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RegisterForm(),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
