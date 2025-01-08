import 'package:flutter/material.dart';

class SnackRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Recipes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            //Add snack recipes here
          ],
        ),
      ),
    );
  }
}