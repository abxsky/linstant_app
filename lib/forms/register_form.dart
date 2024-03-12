import 'package:flutter/material.dart';
import 'package:linstant_app/forms/form_fields/form_text_field.dart';
import 'package:email_validator/email_validator.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  void _saveUser() {
    _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = Theme.of(context).textTheme.bodyLarge!;

    return Form(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).devicePixelRatio * 10,
            ),
            FormTextField(
              title: "Nom d'utilisateur",
              validator: ((username) {
                if (username == null ||
                    username.isEmpty ||
                    username.trim().length <= 1 ||
                    username.trim().length > 25) {
                  return "le nom d'utilisateur n'est pas valide ";
                }
                return null;
              }),
            ),
            SizedBox(
              height: MediaQuery.of(context).devicePixelRatio * 10,
            ),
            FormTextField(
              title: "E-mail",
              validator: ((email) {
                if (email == null ||
                    EmailValidator.validate(email) ||
                    email.trim().length < 3 ||
                    email.trim().length > 50) {
                  return 'Veuillez rensegnier un e-mail vailde.';
                }
                return null;
              }),
            ),
            SizedBox(
              height: MediaQuery.of(context).devicePixelRatio * 10,
            ),
            FormTextField(
                title: 'Mot de passe',
                validator: (password) {
                  RegExp regex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  if (password == null ||
                      password.isEmpty ||
                      password.length < 8 ||
                      !regex.hasMatch(password)) {
                    return 'Le mot de passe doit contenir au moins une lettre minuslcule, une majuscule, un nombre, un charactére speciale et doit faire au moins 8 charactéres';
                  }
                  return null;
                }),
            SizedBox(
              height: MediaQuery.of(context).devicePixelRatio * 30,
            ),
            ElevatedButton(
              onPressed: _saveUser,
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 245, 245, 76))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Text(
                  "S'inscrire",
                  style: defaultTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
