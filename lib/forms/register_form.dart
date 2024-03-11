import 'package:flutter/material.dart';
import 'package:linstant_app/forms/form_fields/form_text_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

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
              validator: ((value) {
                return "Nom d'utilisateur";
              }),
            ),
            SizedBox(
              height: MediaQuery.of(context).devicePixelRatio * 10,
            ),
            FormTextField(
              title: "E-mail",
              validator: ((value) {
                return "email";
              }),
            ),
            SizedBox(
              height: MediaQuery.of(context).devicePixelRatio * 10,
            ),
            FormTextField(
                title: 'Mot de passe',
                validator: (value) {
                  return 'Mot de passe';
                }),
            SizedBox(
              height: MediaQuery.of(context).devicePixelRatio * 30,
            ),
            ElevatedButton(
              onPressed: () {},
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
