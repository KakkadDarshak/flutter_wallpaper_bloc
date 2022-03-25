extension CapitalizeExtension on String {
  String get capitalizeFirstLetter => '${this[0].toUpperCase()}${substring(1)}';

  String get allInCaps => toUpperCase();

  String get capitalizeFirstOfEach => split(" ").map((str) => str.capitalizeFirstLetter).join(" ");
}
