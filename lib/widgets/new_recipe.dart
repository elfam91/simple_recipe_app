import 'package:flutter/material.dart';
import 'package:simple_recipe_app/models/recipe.dart';

class NewRecipe extends StatelessWidget {
  final Function(Recipe) onAddRecipe;
  final _titleController = TextEditingController();
  final _ingredientsController = TextEditingController();
  final _instructionsController = TextEditingController();

  NewRecipe({required this.onAddRecipe});

  void _submitData() {
    final enteredTitle = _titleController.text;
    final enteredIngredients = _ingredientsController.text.split(',');
    final enteredInstructions = _instructionsController.text;

    if (enteredTitle.isEmpty || enteredIngredients.isEmpty || enteredInstructions.isEmpty) {
      return;
    }

    final newRecipe = Recipe(
      title: enteredTitle,
      ingredients: enteredIngredients,
      instructions: enteredInstructions,
      dateAdded: DateTime.now(),
    );

    onAddRecipe(newRecipe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Recipe Title'),
          ),
          TextField(
            controller: _ingredientsController,
            decoration: const InputDecoration(labelText: 'Ingredients (comma separated)'),
          ),
          TextField(
            controller: _instructionsController,
            decoration: const InputDecoration(labelText: 'Instructions'),
          ),
          ElevatedButton(
            onPressed: _submitData,
            child: const Text('Add Recipe'),
          ),
        ],
      ),
    );
  }
}
