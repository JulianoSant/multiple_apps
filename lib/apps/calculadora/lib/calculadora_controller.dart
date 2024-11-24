import 'package:mobx/mobx.dart';

part 'calculadora_controller.g.dart';

class CalculadoraController = _CalculadoraControllerBase with _$CalculadoraController;

abstract class _CalculadoraControllerBase with Store {
  @observable
  String display = "0";

  String _value1 = "";
  String _value2 = "";
  String _operator = "";

  @action
  void input(String value) {
    if (value == 'C') {
      clearDisplay();
      return;
    }

    if (value == '+' || value == '-' || value == '*' || value == '/') {
      if (_value1.isNotEmpty) {
        _operator = value;
        display = '$_value1 $_operator';
      }
      return;
    }

    if (value == '=') {
      // calculate();
      return;
    }

    if (_operator.isEmpty) {
      _value1 += value;
      display = _value1;
    } else {
      _value2 += value;
      display = '$_value1 $_operator $_value2';
    }
  }

  @action
  void clearDisplay() {
    display = "0";
    _value1 = "";
    _value2 = "";
    _operator = "";
  }

  @action
  soma(int x, int y) {
    display = (x + y).toString();
  }
}
