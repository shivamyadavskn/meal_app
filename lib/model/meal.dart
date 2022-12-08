enum Complexicity {
  easy,
  challenging,
  hard,
}

enum Affordablity {
  affordable,
  pricey,
  luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexicity complexicity;
  final Affordablity affordablity;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  Meal(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.complexicity,
      required this.affordablity,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian});
}
