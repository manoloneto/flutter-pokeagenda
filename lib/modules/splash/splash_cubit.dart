import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeagenda/services/pokemon_service.dart';

import '../../models/pokemon.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState());

  Future<void> getPokemonList() async {
    if (kDebugMode) print('Trying to get Pokémon list from API');
    List<Pokemon> pokemonList = await PokemonService().getPokemonList();
    emit(
      SplashState().copy(
        isLoaded: true,
      ),
    );
  }
}
