import 'package:flutter/material.dart';

class MovieDetailsShadow extends StatelessWidget {
  const MovieDetailsShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}
