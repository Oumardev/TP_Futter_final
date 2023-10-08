class Recipe {
  final String id;
  final String name;
  final List<String> ingredients;
  final List<String> steps;

  Recipe({required this.id, required this.name, required this.ingredients, required this.steps});

  // Transformer un document Firestore en objet Recipe
  factory Recipe.fromFirestore(Map<String, dynamic> data, String id) {
    return Recipe(
      id: id,
      name: data['name'],
      ingredients: List<String>.from(data['ingredients']),
      steps: List<String>.from(data['steps']),
    );
  }

  // Transformer un objet Recipe en Map pour Firestore
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ingredients': ingredients,
      'steps': steps,
    };
  }
}
