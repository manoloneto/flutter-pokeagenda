import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/pokemon_service.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState());

  Future<void> getPokemonList() async {
    final pokemonList = await PokemonService().getPokemonList();
    if (pokemonList.isNotEmpty) {
      emit(SplashState().copy(
        isLoaded: true,
      ));
    } else {
      emit(SplashState().copy(
        isLoaded: false,
      ));
    }
  }
}
