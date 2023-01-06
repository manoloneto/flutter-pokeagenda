import 'package:flutter/material.dart';

import 'modules/splash/splash_page.dart';

class PokeAgendaApp extends StatelessWidget {
  PokeAgendaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PokéAgenda',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      onGenerateRoute: onGenerateRoute,
    );
  }

  final _routes = {
    SplashPage.routeName: SplashPage.route,
  };

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final name = settings.name ?? '/';
    final route = _routes[name];

    if (route == null) throw UnimplementedError('Route ${settings.name} does not exist');

    return route(settings);
  }
}
