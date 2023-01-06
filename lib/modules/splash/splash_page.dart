import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeagenda/modules/splash/splash_state.dart';
import 'package:pokeagenda/modules/splash/splash_view.dart';

import 'splash_cubit.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/';

  const SplashPage({super.key});

  static Future<dynamic> push(BuildContext context) {
    return Navigator.of(context).pushNamed(routeName);
  }

  static Future<dynamic> pushReplacement(BuildContext context) {
    return Navigator.of(context).pushReplacementNamed(routeName);
  }

  static Route<dynamic> route(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => BlocProvider(
        create: (context) => SplashCubit()..getPokemonList(),
        child: const SplashPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return const SplashView();
      },
    );
  }
}
