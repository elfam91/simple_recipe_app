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
            // Add lunch recipes here
            ListTile(leading:
            Container(
              width: 100, // Set the desired width
              height: 100, // Set the desired height
              child: Image.asset(
                'assets/snack.jpg',
                fit: BoxFit.cover, // This ensures the image fills the container
              ),
            ),
        title: Padding(
          padding: EdgeInsets.only(left: 16), // Add space between image and title
          child: Text('Grilled Cheese Sandwich'),
        ),
            ),
            ListTile(leading:
            Container(
              width: 100, // Set the desired width
              height: 100, // Set the desired height
              child: Image.asset(
                'assets/salad.jpg',
                fit: BoxFit.cover, // This ensures the image fills the container
              ),
            ),
              title: Padding(
                padding: EdgeInsets.only(left: 16), // Add space between image and title
                child: Text('Chicken Salad'),
              ),
            ),
            // Add more lunch recipes here
          ],
        ),
      ),
    );
  }
}
