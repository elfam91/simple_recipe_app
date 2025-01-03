import 'package:flutter/material.dart';
import 'package:simple_recipe_app/widgets/meal_type_card.dart';
import 'package:simple_recipe_app/widgets/recipe_card.dart';
import 'add_recipe_page.dart'; // Import the new page

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final Map<String, String> _recipes = {
    'Ice Cream': 'assets/ice_cream.jpg',
    'Pancakes': 'assets/breakfast.jpg',
    'Taco': 'assets/taco.jpg',
    'Coffee': 'assets/coffee.jpg',
    'Spaghetti': 'assets/spaghetti.jpg',
    'Salad': 'assets/salad.jpg',
  };

  @override
  Widget build(BuildContext context) {
    List<String> filteredRecipes = _recipes.keys
        .where((recipe) => recipe.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Food Recipe'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddRecipePage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
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
            Padding(
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
            SizedBox(height: 20),

            // Search bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
                  suffixIcon: _searchQuery.isNotEmpty
                      ? IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      setState(() {
                        _searchQuery = '';
                        _searchController.clear();
                      });
                    },
                  )
                      : null,
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
            SizedBox(height: 20),

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

            // Popular Recipes Header
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text(
                'Popular Recipes',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
            ),

            // Recipes Grid Layout
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true, // Prevent it from expanding to full height
                physics: NeverScrollableScrollPhysics(), // Disable grid scrolling
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: (MediaQuery.of(context).size.width / 2) / 250,
                ),
                itemCount: filteredRecipes.length,
                itemBuilder: (context, index) {
                  String recipe = filteredRecipes[index];
                  return RecipeCard(
                    imgSrc: _recipes[recipe]!,
                    title: recipe,
                    prepTime: '15 M',
                    cookTime: '30 M',
                  );
                },
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddRecipePage()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}



