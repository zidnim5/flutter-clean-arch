class CountryModel {
  final String country;
  final String slug;
  final String iso2;

  CountryModel({required this.country, required this.slug, required this.iso2});

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
        country: json["Country"], slug: json["slug"], iso2: json["ISO2"]);
  }
}
