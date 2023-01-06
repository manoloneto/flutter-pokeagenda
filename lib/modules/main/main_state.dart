class MainState {
  bool? isLoaded;

  MainState({this.isLoaded});

  MainState copy({bool? isLoaded}) {
    return MainState(
      isLoaded: isLoaded ?? this.isLoaded,
    );
  }
}
