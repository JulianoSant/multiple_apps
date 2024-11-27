import 'package:mobx/mobx.dart';

part 'calculadora_controller.g.dart';

class CalculadoraController = _CalculadoraControllerBase with _$CalculadoraController;

abstract class _CalculadoraControllerBase with Store {
  @observable
  //variavel que vai ser exibida no Observer do display
  String display = "0";

  //variaveis q serao usadas para fazer os calculos dentro da classe
  String _value1 = "";
  String _value2 = "";
  String _operator = "";

  @action
  void input(String value) {
    //limpa o display
    if (value == 'C') {
      clearDisplay();
      return;
    }

    //Define qual operador foi escolhido
    if (value == '+' || value == '-' || value == '×' || value == '÷') {
      if (_value1.isNotEmpty) {
        _operator = value;
        display = '$_value1 $_operator';
      }
      return;
    }

    //inicio do calculo de acordo com o operador escolhido
    if (value == '=') {
      calculate();
      return;
    }

    // esta concatenando os valores digitados enquanto não for escolhido um operador
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
  calculate() {
    if (_value1.isEmpty || _value2.isEmpty) {
      return;
    }

    //verifica qual operador foi escolhido para fazer o calculo
    switch (_operator) {
      case '+':
        soma(int.parse(_value1), int.parse(_value2));
      case '-':
        subtrai(int.parse(_value1), int.parse(_value2));
      case '×':
        multiplica(int.parse(_value1), int.parse(_value2));
      case '÷':
        divide(int.parse(_value1), int.parse(_value2));
    }

    //limpa os valores apos o calculo
    _value1 = display;
    _value2 = "";
    _operator = "";
  }

  @action
  soma(int x, int y) {
    display = (x + y).toString();
  }

  @action
  subtrai(int x, int y) {
    display = (x - y).toString();
  }

  @action
  multiplica(int x, int y) {
    display = (x * y).toString();
  }

  @action
  divide(int x, int y) {
    display = (x / y).toString();
  }
}
