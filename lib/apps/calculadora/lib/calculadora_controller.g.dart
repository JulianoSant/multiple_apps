// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalculadoraController on _CalculadoraControllerBase, Store {
  late final _$displayAtom =
      Atom(name: '_CalculadoraControllerBase.display', context: context);

  @override
  String get display {
    _$displayAtom.reportRead();
    return super.display;
  }

  @override
  set display(String value) {
    _$displayAtom.reportWrite(value, super.display, () {
      super.display = value;
    });
  }

  late final _$_CalculadoraControllerBaseActionController =
      ActionController(name: '_CalculadoraControllerBase', context: context);

  @override
  void clearDisplay() {
    final _$actionInfo = _$_CalculadoraControllerBaseActionController
        .startAction(name: '_CalculadoraControllerBase.clearDisplay');
    try {
      return super.clearDisplay();
    } finally {
      _$_CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic soma(int x, int y) {
    final _$actionInfo = _$_CalculadoraControllerBaseActionController
        .startAction(name: '_CalculadoraControllerBase.soma');
    try {
      return super.soma(x, y);
    } finally {
      _$_CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
display: ${display}
    ''';
  }
}
