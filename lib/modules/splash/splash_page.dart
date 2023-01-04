import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeagenda/modules/splash/splash_view.dart';

import 'splash_cubit.dart';
import 'splash_state.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SplashCubit(),
      child: Builder(builder: (context) => SplashView()),
    );
  }
}