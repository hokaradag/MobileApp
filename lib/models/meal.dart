class Meal {
  final String id;
  final String name;
  final String category;
  final String area;
  final String instructions;
  final String imageUrl;

  Meal({
    required this.id,
    required this.name,
    required this.category,
    required this.area,
    required this.instructions,
    required this.imageUrl,
  });

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      id: json['idMeal'],
      name: json['strMeal'],
      category: json['strCategory'],
      area: json['strArea'],
      instructions: json['strInstructions'],
      imageUrl: json['strMealThumb'],
    );
  }
}
