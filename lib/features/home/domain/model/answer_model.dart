class AnswerModel {
  final String name;
  final String gender;
  final String country;
  final List<String> genres;
  final List<String> medias;
  final int rating;

  AnswerModel({
    required this.name,
    required this.gender,
    required this.country,
    required this.genres,
    required this.medias,
    required this.rating,
  });

  Map<String, dynamic> toJson() => {
        "name": name,
        "gender": gender,
        "country": country,
        "genres": genres,
        "medias": medias,
        "rating": rating,
      };
}
