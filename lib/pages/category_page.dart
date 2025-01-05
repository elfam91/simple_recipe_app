import 'package:flutter/material.dart';
import 'package:simple_recipe_app/widgets/meal_grid_tyle.dart';
import 'package:simple_recipe_app/recipes/lunch_recipe_page.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            childAspectRatio: ((MediaQuery.of(context).size.width / 2) /250),
            children: [
              MealGridTile(
                imgSrc: 'assets/breakfast.jpg',
                title: 'Breakfast',
              ),
          GestureDetector(
            onTap: () {
              // Navigate to Lunch Recipes page when tapped
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
              MealGridTile(
                imgSrc: 'assets/dessert.jpeg',
                title: 'Dessert',
              ),
              MealGridTile(
                imgSrc: 'assets/snack.jpg',
                title: 'Snack',
              ),
              MealGridTile(
                imgSrc: 'assets/beverage.jpg',
                title: 'Beverage',
              ),
              MealGridTile(
                imgSrc: 'assets/dinner.jpeg',
                title: 'Dinner',
              ),
            ],
          ),
        ),
      ],
    );
  }
}