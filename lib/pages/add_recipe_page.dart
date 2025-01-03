import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  final _titleController = TextEditingController();
  final _ingredientsController = TextEditingController();
  final _instructionsController = TextEditingController();

  void _addRecipe() {
    // Add logic to save the recipe (for now, just printing the values)
    String title = _titleController.text;
    String ingredients = _ingredientsController.text;
    String instructions = _instructionsController.text;

    if (title.isEmpty || ingredients.isEmpty || instructions.isEmpty) {
      // Show error if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill in all fields")),
      );
    } else {
      // Print the recipe details for now (you can replace this with actual storage logic)
      print('Recipe Added:');
      print('Title: $title');
      print('Ingredients: $ingredients');
      print('Instructions: $instructions');

      // Optionally, clear the fields
      _titleController.clear();
      _ingredientsController.clear();
      _instructionsController.clear();

      // Show a confirmation message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Recipe Added Successfully!")),
      );

      // You could navigate back to the home page, for example
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Recipe"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Recipe Title'),
            ),
            TextField(
              controller: _ingredientsController,
              decoration: InputDecoration(labelText: 'Ingredients'),
              maxLines: 5,
            ),
            TextField(
              controller: _instructionsController,
              decoration: InputDecoration(labelText: 'Cooking Instructions'),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addRecipe,
              child: Text('Add Recipe'),
            ),
          ],
        ),
      ),
    );
  }
}
