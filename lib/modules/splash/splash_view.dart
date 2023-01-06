import 'package:flutter/material.dart';
import 'package:pokeagenda/modules/main/main_page.dart';

import 'splash_state.dart';

class SplashView extends StatelessWidget {
  final SplashState state;

  const SplashView({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    if (state.isLoaded == true) {
      Future.delayed(const Duration(seconds: 3), () {
        MainPage.push(context);
      });
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset('assets/logos/logo_full_color.png'),
        ),
      ),
    );
  }
}
