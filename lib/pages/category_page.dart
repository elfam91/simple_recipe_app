import 'package:flutter/material.dart';
import 'package:simple_recipe_app/recipes/lunch_recipe_page.dart';
import 'package:simple_recipe_app/recipes/breakfast_recipe_page.dart';
import 'package:simple_recipe_app/recipes//dessert_recipe_page.dart';
import 'package:simple_recipe_app/recipes/snack_recipe_page.dart';
import 'package:simple_recipe_app/recipes/beverage_recipe_page.dart';
import 'package:simple_recipe_app/recipes/dinner_recipe_page.dart';
import 'package:simple_recipe_app/widgets/meal_grid_tyle.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
            child: Text(
              'Category',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(20),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: (MediaQuery.of(context).size.width / 2) / 250,
              children: [
                // Breakfast Category
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BreakfastRecipePage(),
                      ),
                    );
                  },
                  child: MealGridTile(
                    imgSrc: 'assets/breakfast.jpg',
                    title: 'Breakfast',
                  ),
                ),
                // Lunch Category
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LunchRecipePage(),
                      ),
                    );
                  },
                  child: MealGridTile(
                    imgSrc: 'assets/lunch.jpg',
                    title: 'Lunch',
                  ),
                ),
                // Dessert Category
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DessertRecipePage(),
                      ),
                    );
                  },
                  child: MealGridTile(
                    imgSrc: 'assets/dessert.jpeg',
                    title: 'Dessert',
                  ),
                ),
                // Snack Category
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SnackRecipePage(),
                      ),
                    );
                  },
                  child: MealGridTile(
                    imgSrc: 'assets/snack.jpg',
                    title: 'Snack',
                  ),
                ),
                // Beverage Category
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BeverageRecipePage(),
                      ),
                    );
                  },
                  child: MealGridTile(
                    imgSrc: 'assets/beverage.jpg',
                    title: 'Beverage',
                  ),
                ),
                // Dinner Category
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DinnerRecipePage(),
                      ),
                    );
                  },
                  child: MealGridTile(
                    imgSrc: 'assets/dinner.jpeg',
                    title: 'Dinner',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
