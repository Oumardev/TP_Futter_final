import 'package:flutter/material.dart';
import 'recipe_detail_view.dart';

class RecipeListView extends StatelessWidget {
  final List<String> recipes = ["Pizza", "Burger", "Pasta"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recettes')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RecipeDetailView(recipeName: recipes[index]),
              ));
            },
          );
        },
      ),
    );
  }
}
