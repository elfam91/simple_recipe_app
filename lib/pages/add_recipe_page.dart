import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  // Text controllers for the recipe fields
  final _titleController = TextEditingController();
  final _ingredientsController = TextEditingController();
  final _instructionsController = TextEditingController();

  // Category selection variable
  String _selectedCategory = 'Breakfast';

  // Method to add the recipe (with category)
  void _addRecipe() {
    String title = _titleController.text;
    String ingredients = _ingredientsController.text;
    String instructions = _instructionsController.text;

    if (title.isEmpty || ingredients.isEmpty || instructions.isEmpty) {
      // Show error if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill in all fields")),
      );
    } else {
      // Print the recipe details and selected category for now
      print('Recipe Added:');
      print('Title: $title');
      print('Category: $_selectedCategory');
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

      // Optionally, navigate back after adding the recipe
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Recipe"),
      ),
      body: SingleChildScrollView( // Wrap Column with SingleChildScrollView
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe Title Input
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Recipe Title'),
            ),
            SizedBox(height: 10),

            // Ingredients Input
            TextField(
              controller: _ingredientsController,
              decoration: InputDecoration(labelText: 'Ingredients'),
              maxLines: 5,
            ),
            SizedBox(height: 10),

            // Instructions Input
            TextField(
              controller: _instructionsController,
              decoration: InputDecoration(labelText: 'Cooking Instructions'),
              maxLines: 5,
            ),
            SizedBox(height: 20),

            // Category Dropdown
            Text('Select Recipe Category:'),
            DropdownButton<String>(
              value: _selectedCategory,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCategory = newValue!;
                });
              },
              items: <String>['Breakfast', 'Lunch', 'Dinner', 'Dessert', 'Beverage', 'Snack']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // Add Recipe Button
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