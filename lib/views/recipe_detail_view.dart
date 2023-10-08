import 'package:flutter/material.dart';

class RecipeDetailView extends StatelessWidget {
  final String recipeName;

  RecipeDetailView({required this.recipeName});

  @override
  Widget build(BuildContext context) {
    // Les données fictives pour l'exemple.
    final List<String> ingredients = ["Tomate", "Fromage", "Pâte"];
    final List<String> steps = [
      "Étalez la pâte.",
      "Ajoutez la sauce tomate.",
      "Ajoutez le fromage.",
      "Cuire au four à 200°C pendant 20 minutes.",
    ];

    return Scaffold(
      appBar: AppBar(title: Text(recipeName)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ingrédients:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ...ingredients.map((ingredient) => Text("- $ingredient")),
            SizedBox(height: 20),
            Text("Étapes:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ...steps.map((step) => Text(step)),
          ],
        ),
      ),
    );
  }
}
