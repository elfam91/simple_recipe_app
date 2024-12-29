import 'package:flutter/material.dart';
import 'package:simple_recipe_app/widgets/meal_type_card.dart';
import 'package:simple_recipe_app/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';


  final List<String> _recipes = [
    'Ice Cream', 'Pancakes', 'Taco', 'Coffee', 'Spaghetti', 'Salad',
  ];

  @override
  Widget build(BuildContext context) {

    List<String> filteredRecipes = _recipes
        .where((recipe) => recipe.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: Text(
            'Food Recipe',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 24,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Good Morning,\nGrinch',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/grinch.jpg'),
              ),
            ],
          ),
        ),
        // Search bar
        Container(
          padding: EdgeInsets.all(20),
          child: TextField(
            controller: _searchController,
            onChanged: (query) {
              setState(() {
                _searchQuery = query;
              });
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade200,
                ),
                borderRadius: BorderRadius.zero,
              ),
              hintText: 'Search recipe here...',
            ),
          ),
        ),
        // Meal type cards
        Container(
          height: 110,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MealTypeCard(
                title: 'Breakfast',
                icon: Icons.breakfast_dining,
              ),
              MealTypeCard(
                title: 'Lunch',
                icon: Icons.lunch_dining,
              ),
              MealTypeCard(
                title: 'Dessert',
                icon: Icons.cake,
              ),
              MealTypeCard(
                title: 'Dinner',
                icon: Icons.dinner_dining,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
          child: Text(
            'Popular Recipes',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
        // List of filtered recipes based on search
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: filteredRecipes.map((recipe) {
              return RecipeCard(
                imgSrc: 'assets/recipe.jpg',
                title: recipe,
                prepTime: '15 M',
                cookTime: '30 M',
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
