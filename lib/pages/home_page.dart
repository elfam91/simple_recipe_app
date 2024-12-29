import 'package:flutter/material.dart';

import 'package:simple_recipe_app/widgets/meal_type_card.dart';

import 'package:simple_recipe_app/widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration:
                  InputDecoration(
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
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(16.5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade200,
                    )
                ),
                child: Icon(
                  Icons.tune,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
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
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22,
            ),
          ),
        ),
        Expanded(child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            RecipeCard(
              imgSrc: 'assets/ice_cream.jpg',
              title: 'Ice Cream',
              prepTime: '15 M',
              cookTime: '45 M',
            ),
            RecipeCard(
              imgSrc: 'assets/breakfast.jpg',
              title: 'Pancakes',
              prepTime: '15 M',
              cookTime: '15 M',
            ),
            RecipeCard(
              imgSrc: 'assets/taco.jpg',
              title: 'Taco',
              prepTime: '30 M',
              cookTime: '45 M',
            ),
            RecipeCard(
              imgSrc: 'assets/coffee.jpg',
              title: 'Coffee',
              prepTime: '5 M',
              cookTime: '5 M',
            ),
          ],
        ),
        ),
        SizedBox(height: 10,
        ),
      ],
    );
  }
}