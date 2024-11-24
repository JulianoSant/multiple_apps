import 'package:mobx/mobx.dart';

part 'calculadora_controller.g.dart';

class CalculadoraController = _CalculadoraControllerBase with _$CalculadoraController;

abstract class _CalculadoraControllerBase with Store {
  @observable
  String display = "0";

  @action
  void clearDisplay() {
    display = "0";
  }

  @action
  soma(int x, int y) {
    display = (x + y).toString();
  }
}
