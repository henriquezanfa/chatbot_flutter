class Country {
  Country({required this.name});

  final String name;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json["name"] ?? "",
      );

  Map<String, dynamic> toJson() => {"name": name};
}
