import 'micro_core_utils.dart';

//isso é um contrato
abstract class MicroApp {
  //quem impleemntar é obrigado a declarar o nome do microapp
  String get microAppName;
  //obrigatorio declarar o mapa de rotas
  Map<String, WidgetBuilderArgs> get routes;
}
