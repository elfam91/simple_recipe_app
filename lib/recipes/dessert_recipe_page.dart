import 'package:flutter/material.dart';

class DessertRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dessert Recipes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            // First Recipe: Ice cream
            ListTile(
              leading: Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/ice_cream.jpg', // Image for the recipe
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Ice Cream'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: whole milk, heavy cream, sugar, salt, vanilla bean, egg yolks'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: Whip the cream, mix the milk and vanilla. Combine the mixtures: Gently fold the whipped cream into the condensed milk mixture. Do this slowly.'),
                    SizedBox(height: 8),
                    Text('Prep time: 10 minutes'),
                    SizedBox(height: 8),
                    Text('Cook time: 10 minutes'),
                    SizedBox(height: 8),
                    Text('Stars: ⭐⭐⭐⭐⭐'),
                  ],
                ),
              ),
            ),

            // Add more dessert recipes here following the same structure
          ],
        ),
      ),
    );
  }
}