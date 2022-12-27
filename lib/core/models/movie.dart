class Movie {
  Movie({
    required this.score,
    required this.show,
  });

  final double score;
  final Show show;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        score: json["score"].toDouble(),
        show: Show.fromJson(json["show"]),
      );

  Map<String, dynamic> toJson() => {
        "score": score,
        "show": show.toJson(),
      };
}

class Show {
  Show({
    required this.id,
    required this.url,
    required this.name,
    required this.image,
  });

  final int id;
  final String url;
  final String name;
  final Image image;

  factory Show.fromJson(Map<String, dynamic> json) => Show(
        id: json["id"],
        url: json["url"],
        name: json["name"],
        image: Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "name": name,
        "image": image.toJson(),
      };
}

class Image {
  Image({
    required this.medium,
    required this.original,
  });

  final String medium;
  final String original;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        medium: json["medium"],
        original: json["original"],
      );

  Map<String, dynamic> toJson() => {
        "medium": medium,
        "original": original,
      };
}
