import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';
import 'package:pokeagenda/models/pokemon.dart';
import 'package:pokeagenda/utilities/interceptors/logger_interceptor.dart';

class PokemonService {
  static const String baseUrl = "https://pokeapi.co/api/v2/";
  static const String pokemonList = "pokemon/";

  http.Client client = InterceptedClient.build(
    interceptors: [LoggerInterceptor()],
  );

  Future<List<Pokemon>> getPokemonList() async {
    final response = await client.get(Uri.parse('$baseUrl$pokemonList'));
    return Pokemon.fromJsonList(response.body as List<dynamic>);
  }
}
