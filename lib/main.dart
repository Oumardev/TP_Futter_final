import 'package:flutter/material.dart';
import 'views/recipe_list_view.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application de Recettes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RecipeListView(),
    );
  }
}
