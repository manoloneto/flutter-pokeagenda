class SplashState {
  bool isLoaded;

  SplashState({this.isLoaded = false});

  SplashState copy({bool isLoaded = false}) {
    return SplashState(
      isLoaded: isLoaded,
    );
  }
}
