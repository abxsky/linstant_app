import 'package:flutter/material.dart';
import 'package:linstant_app/screens/home_screen.dart';
import 'package:linstant_app/screens/register_screen.dart';
import 'package:linstant_app/forms/form_fields/form_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    //helper styling variables
    final defaultTextStyle = Theme.of(context).textTheme.bodyLarge!;
    final defaultLinkStyle = Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.bold, decoration: TextDecoration.underline);
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).devicePixelRatio * 10,
        ),
        FormTextField(
          title: "Nom d'utilisateur ou e-mail",
          validator: ((value) {
            return "Nom d'utilisateur ou email";
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
          height: MediaQuery.of(context).devicePixelRatio * 10,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 245, 245, 76))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Text(
              'Se connecter',
              style: defaultTextStyle,
            ),
          ),
        ),
        OutlinedButton(
          style: ButtonStyle(side: MaterialStateProperty.all(BorderSide.none)),
          onPressed: () {},
          child: Text(
            'Explorer en tant qu’invité',
            style: defaultLinkStyle,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).devicePixelRatio * 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Divider(
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),
            ),
            Text(
              'ou',
              style: defaultTextStyle,
            ),
            const Expanded(
              child: Divider(
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).devicePixelRatio * 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {/*TODO*/},
              child: Image.asset('assets/images/x_icon.png'),
            ),
            InkWell(
              child: Image.asset('assets/images/instagram_icon.png'),
            ),
            InkWell(
              child: Image.asset('assets/images/facebook_icon.png'),
            ),
            InkWell(
              child: Image.asset('assets/images/snapchat_icon.png'),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).devicePixelRatio * 10,
        ),
        const Divider(
          thickness: 0.5,
          indent: 60,
          endIndent: 60,
          color: Colors.black,
        ),
        SizedBox(
          height: MediaQuery.of(context).devicePixelRatio * 10,
        ),
        Column(
          children: [
            Text(
              "Vous voulez vous créez un compte ?",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
              },
              style:
                  ButtonStyle(side: MaterialStateProperty.all(BorderSide.none)),
              child: Text(
                "S'inscrire",
                style: defaultLinkStyle,
              ),
            )
          ],
        )
      ],
    ));
  }
}
