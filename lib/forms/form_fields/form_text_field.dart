import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  const FormTextField(
      {super.key, required this.title, required this.validator});

  final String title;
  final String? Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ),
          validator: validator,
        ),
      ),
    );
  }
}
