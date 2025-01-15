import 'package:flutter/material.dart';

class LunchRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lunch Recipes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            // First Recipe: Chicken salad
            ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/salad.jpg',
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Chicken Salad'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: Chicken, mayonnaise, greek yogurt, red onion, salt and pepper'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: Cook the chicken, add the rest of the ingredients'
                    ),
                    SizedBox(height: 8),
                    Text('Prep time: 5 minutes'),
                    SizedBox(height: 8),
                    Text('Cook time: 20 minutes'),
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
