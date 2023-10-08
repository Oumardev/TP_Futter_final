import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/recipe.dart';

class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Ajouter une nouvelle recette
  Future<void> addRecipe(Recipe recipe) async {
    await _firestore.collection('recipes').add(recipe.toMap());
  }

  // Récupérer toutes les recettes
  Stream<List<Recipe>> getRecipes() {
    return _firestore.collection('recipes').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Recipe.fromFirestore(doc.data() as Map<String, dynamic>, doc.id)).toList();
    });
  }

  // Mettre à jour une recette
  Future<void> updateRecipe(Recipe recipe) async {
    await _firestore.collection('recipes').doc(recipe.id).update(recipe.toMap());
  }

  // Supprimer une recette
  Future<void> deleteRecipe(String recipeId) async {
    await _firestore.collection('recipes').doc(recipeId).delete();
  }
}
