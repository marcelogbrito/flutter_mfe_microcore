import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:micro_core/app/micro_core_utils.dart';

import 'microapp.dart';

abstract class BaseApp {
  //lista de microapps. todos precisam ser registrados
  List<MicroApp> get microApps;
  //sao as rotas do nosso baseapp
  Map<String, WidgetBuilderArgs> get baseRoutes;
//mapa de todas as rotas de nossas aplicações
  final Map<String, WidgetBuilderArgs> routes = {};

//metodo pra adicionar rotas a lista de rotas
  void registerRouters() {
    if (baseRoutes.isNotEmpty) routes.addAll(baseRoutes);
    if (microApps.isNotEmpty) {
      for (MicroApp microapp in microApps) {
        routes.addAll(microapp.routes);
      }
    }
  }

//recebe nomes e argumentos das rotas
  Route<dynamic>? generalRoute(RouteSettings settings) {
    var routerName = settings.name;
    var routerArgs = settings.arguments;

    var navigateTo = routes[routerName];
    if (navigateTo == null) return null;

//manda ele navegar e passa argumentos se existirem
    return MaterialPageRoute(
      builder: (context) => navigateTo.call(context, routerArgs ?? {}),
    );
  }
}
