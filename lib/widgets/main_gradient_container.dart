import 'package:flutter/material.dart';

class MainGradientContainer extends StatelessWidget {
  const MainGradientContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 102, 255, 0), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Center(
          child:child ),
    );
  }
}
