enum Flavor {
  versionOne,
  versionTwo,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.versionOne:
        return 'Simpsons Character Viewer';
      case Flavor.versionTwo:
        return 'The Wire Character Viewer';
      default:
        return 'No Flavored Title';
    }
  }
}
