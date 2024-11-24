library Calculadora;

import 'package:calculadora/calculadora_controller.dart';
import 'package:calculadora/utils/button.dart';
import 'package:calculadora/utils/constantes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CalculadoraPage extends StatelessWidget {
  CalculadoraPage({super.key});

  // aq está a instancia do controller onde foi criado o display e os metodos de ação com o mobx
  final CalculadoraController controller = CalculadoraController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App 1")),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Observer(builder: (_) {
                  return Text(
                    controller.display,
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              itemCount: Constantes.CALCULATOR_BUTTONS.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) => Button(
                label: Constantes.CALCULATOR_BUTTONS[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
