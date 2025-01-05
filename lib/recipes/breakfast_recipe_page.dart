import 'package:flutter/material.dart';

class BreakfastRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breakfast Recipes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            // First Recipe: Pancakes
            ListTile(
              leading: Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/breakfast.jpg', // Image for the recipe
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Pancakes'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: Flour, baking powder, sugar, salt, milk and butter, egg'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: '
                        '1. Sift the dry ingredients together, '
                        '2. Make a well, then add the wet ingredients. Stir to combine, '
                        '3. Scoop the batter onto a hot griddle or pan, '
                        '4. Cook for two to three minutes, then flip, '
                        '5. Continue cooking until brown on both sides.'
                    ),
                    SizedBox(height: 8),
                    Text('Prep time: 5 minutes'),
                    SizedBox(height: 8),
                    Text('Cook time: 15 minutes'),
                    SizedBox(height: 8),
                    Text('Stars: ⭐⭐⭐⭐⭐'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}