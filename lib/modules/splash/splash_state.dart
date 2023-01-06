class SplashState {
  bool? isLoaded;

  SplashState({this.isLoaded});

  SplashState copy({bool? isLoaded}) {
    return SplashState(
      isLoaded: isLoaded ?? this.isLoaded,
    );
  }
}
