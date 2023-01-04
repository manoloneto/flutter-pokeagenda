import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeagenda/modules/main/main_view.dart';

import 'main_cubit.dart';
import 'main_state.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MainCubit(),
      child: Builder(builder: (context) => MainView()),
    );
  }
}
