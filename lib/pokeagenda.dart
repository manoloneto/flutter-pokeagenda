import 'package:flutter/material.dart';

import 'modules/main/main_page.dart';
import 'modules/splash/splash_page.dart';

class PokeAgenda extends StatelessWidget {
  PokeAgenda({super.key});

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
    MainPage.routeName: MainPage.route,
  };

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final name = settings.name ?? '/';
    final route = _routes[name];

    if (route == null) throw UnimplementedError('Route ${settings.name} does not exist');

    return route(settings);
  }
}
