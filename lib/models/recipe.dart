class Recipe {
  final String title;
  final String imageUrl;
  final String detailsUrl;

  Recipe({required this.title, required this.imageUrl, required this.detailsUrl});

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      title: json['title'] ?? '',
      imageUrl: json['image'] ?? '',
      detailsUrl: json['sourceUrl'] ?? '',
    );
  }

  get prepTime => null;

  get cookTime => null;
}

