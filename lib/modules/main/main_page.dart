import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_cubit.dart';
import 'main_state.dart';
import 'main_view.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main';

  const MainPage({super.key});

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
        create: (context) => MainCubit(),
        child: const MainPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return const MainView();
      },
    );
  }
}
