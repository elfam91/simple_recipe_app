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
            // First Recipe: Caffe Latte
            ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/coffee.jpg',
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
                    Text('Stars: ⭐⭐⭐'),
                  ],
                ),
              ),
            ),

            // Second Recipe: Iced Coffee
            ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/coffee.jpg',
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
                    Text('Cook time: 5 minutes'),
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
