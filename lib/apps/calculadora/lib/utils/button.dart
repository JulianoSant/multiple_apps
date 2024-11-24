// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;

  const Button({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.deepPurple,
        ),
        onPressed: () => print(label),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
