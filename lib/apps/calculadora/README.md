Nesse projeto esta sendo usado Mobx para o gerenciamento de estados!

## Mobx

- pacotes necessarios

dependencies:
  mobx: ^2.0.7
  flutter_mobx: ^2.0.6

dev_dependencies:
  build_runner: ^2.4.5
  mobx_codegen: ^2.0.7

- em seu arquivo de controller add o pacote 
import 'package:mobx/mobx.dart';
part '<NOME_DO_ARQUIVO>.g.dart';

# comandos mobx
para gerar o arquivo .g.dart => flutter pub run build_runner build --delete-conflicting-outputs

Sempre que modificar os stores, gere novamente os arquivos .g.dart => flutter pub run build_runner build