import 'package:flutter/material.dart';
import 'package:simple_recipe_app/models/recipe.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() {
    return _RecipesState();
  }
}

class _RecipesState extends State<Recipes> {
  final List<Recipe> _registeredRecipes = [
    Recipe(
        title: 'Chocolate Cake',
        category: Category.baking,
    ),
    Recipe(
        title: 'Lamb Steak',
        category: Category.mainCourses,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: const [
        Text('The chart'),
        Text('Recipes list...')
      ],
    ),);
  }
}