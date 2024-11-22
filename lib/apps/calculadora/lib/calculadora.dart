library Calculadora;
import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App 1")),
      body: const Center(
        child: Text("Bem-vindo ao App 1"),
      ),
    );
  }
}

