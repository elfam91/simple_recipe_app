import 'package:flutter/material.dart';

class DinnerRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dinner Recipes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            // First Recipe: Taco
            ListTile(
              leading: Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/taco.jpg', // Image for the recipe
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Taco'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: beef, onion, taco seasoning, taco shells'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: Cook the beef for 20 minutes, add the seasoning, prepare the taco shells'),
                    SizedBox(height: 8),
                    Text('Prep time: 10 minutes'),
                    SizedBox(height: 8),
                    Text('Cook time: 20 minutes'),
                    SizedBox(height: 8),
                    Text('Stars: ⭐⭐⭐⭐'),
                  ],
                ),
              ),
            ),

            // Second Recipe: Spaghetti
            ListTile(
              leading: Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/spaghetti.jpg', // Image for the recipe
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Spaghetti'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: Spaghetti, olive oil, garlic, crushed tomatoes, tomato paste, salt and pebber'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: Cook the spaghetti, add the rest of the ingredients'),
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

            // Add more dinner recipes here following the same structure
          ],
        ),
      ),
    );
  }
}