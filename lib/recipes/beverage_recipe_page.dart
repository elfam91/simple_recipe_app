import 'package:flutter/material.dart';

class BeverageRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beverage Recipes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            // First Recipe: White Russian
            ListTile(
              leading: Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/beverage.jpg', // Image for the recipe
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('White Russian'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: Vodka, Coffee Liqueur, Cream'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: Mix ingredients in a shaker with ice. Strain into a glass.'),
                    SizedBox(height: 8),
                    Text('Prep time: 5 minutes'),
                    SizedBox(height: 8),
                    Text('Cook time: None'),
                    SizedBox(height: 8),
                    Text('Stars: ⭐⭐⭐⭐'),
                  ],
                ),
              ),
            ),

            // Second Recipe: Caffe Latte
            ListTile(
              leading: Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/beverage.jpg', // Image for the recipe
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Caffe Latte'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: Espresso, Steamed Milk, Foam'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: Brew espresso, steam milk, and pour over espresso.'),
                    SizedBox(height: 8),
                    Text('Prep time: 5 minutes'),
                    SizedBox(height: 8),
                    Text('Cook time: 2 minutes'),
                    SizedBox(height: 8),
                    Text('Stars: ⭐⭐⭐⭐⭐'),
                  ],
                ),
              ),
            ),

            // Third Recipe: Iced Coffee
            ListTile(
              leading: Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/beverage.jpg', // Image for the recipe
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Iced Coffee'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: Coffee, Ice, Sugar, Milk'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: Brew coffee and let it cool. Add ice, sugar, and milk to taste.'),
                    SizedBox(height: 8),
                    Text('Prep time: 5 minutes'),
                    SizedBox(height: 8),
                    Text('Cook time: None'),
                    SizedBox(height: 8),
                    Text('Stars: ⭐⭐⭐⭐'),
                  ],
                ),
              ),
            ),

            // Fourth Recipe: Mojito
            ListTile(
              leading: Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/beverage.jpg', // Image for the recipe
                  fit: BoxFit.cover, // This ensures the image fills the container
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Mojito'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 16), // Space between the title and ingredients
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingredients: Rum, Lime, Mint, Sugar, Soda Water'),
                    SizedBox(height: 8),
                    Text('Cooking Instructions: Muddle mint and lime, then add rum, sugar, and soda water.'),
                    SizedBox(height: 8),
                    Text('Prep time: 10 minutes'),
                    SizedBox(height: 8),
                    Text('Cook time: None'),
                    SizedBox(height: 8),
                    Text('Stars: ⭐⭐⭐⭐⭐'),
                  ],
                ),
              ),
            ),

            // Add more beverage recipes here following the same structure
          ],
        ),
      ),
    );
  }
}
