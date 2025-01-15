import 'package:flutter/material.dart';
import 'package:simple_recipe_app/recipes/snack_recipe_page.dart';
import 'package:simple_recipe_app/widgets/meal_type_card.dart';
import 'package:simple_recipe_app/widgets/recipe_card.dart';
import 'add_recipe_page.dart';
import 'package:simple_recipe_app/recipes/dessert_recipe_page.dart';
import 'package:simple_recipe_app/recipes/dinner_recipe_page.dart';
import 'package:simple_recipe_app/recipes/beverage_recipe_page.dart';
import 'package:simple_recipe_app/recipes/breakfast_recipe_page.dart';
import 'package:simple_recipe_app/recipes/lunch_recipe_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  // Recipes map: now just the images and names
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BreakfastRecipePage(),
                        ),
                      );
                    },
                    child: MealTypeCard(
                      title: 'Breakfast',
                      icon: Icons.breakfast_dining,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LunchRecipePage(),
                        ),
                      );
                    },
                    child: MealTypeCard(
                      title: 'Lunch',
                      icon: Icons.lunch_dining,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DessertRecipePage(),
                        ),
                      );
                    },
                    child: MealTypeCard(
                      title: 'Dessert',
                      icon: Icons.cake,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DinnerRecipePage(),
                        ),
                      );
                    },
                    child: MealTypeCard(
                      title: 'Dinner',
                      icon: Icons.dinner_dining,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BeverageRecipePage(),
                        ),
                      );
                    },
                    child: MealTypeCard(
                      title: 'Beverage',
                      icon: Icons.coffee,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SnackRecipePage(),
                        ),
                      );
                    },
                    child: MealTypeCard(
                      title: 'Snack',
                      icon: Icons.fastfood,
                    ),
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
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: (MediaQuery.of(context).size.width / 2) / 250,
                ),
                itemCount: filteredRecipes.length,
                itemBuilder: (context, index) {
                  String recipe = filteredRecipes[index];
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the corresponding category page
                      if (recipe == 'Pancakes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BreakfastRecipePage(),
                          ),
                        );
                      } else if (recipe == 'Taco' || recipe == 'Spaghetti') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DinnerRecipePage(),
                          ),
                        );
                      } else if (recipe == 'Coffee') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BeverageRecipePage(),
                          ),
                        );
                      } else if (recipe == 'Salad') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LunchRecipePage(),
                          ),
                        );
                      } else if (recipe == 'Ice Cream') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DessertRecipePage(),
                          ),
                        );
                      }
                    },
                    child: RecipeCard(
                      imgSrc: _recipes[recipe]!,
                      title: recipe,
                    ),
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