class Pokemon {
  final String name;
  final String url;

  Pokemon({
    required this.name,
    required this.url,
  });

  static Pokemon fromJson(Map<String, dynamic> json) => Pokemon(
        name: json['name'],
        url: json['url'],
      );

  static List<Pokemon> fromJsonList(List<dynamic> pokemonList) {
    return pokemonList.map((pokemon) => Pokemon.fromJson(pokemon)).toList();
  }
}
