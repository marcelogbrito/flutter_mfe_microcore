import 'package:flutter/widgets.dart';

//'eum alias, um ponteiro que aponta pra essa assinatura
//vamos usar esse cara pras rotas. entao pra bnao ter que passar toda vez tudo isso a gente só chama WidgetBuilderArgs
//o flutter ja possui widgetbuilder porem esse passa um parametro a mais que essa parte de argumento
typedef WidgetBuilderArgs = Widget Function(BuildContext context, Object args);
//tem todo contexto de nossa arvore de rotas e fazer navegaçãoi
final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
