import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String imgSrc;
  final String title;

  // Constructor with only image and title
  RecipeCard({
    required this.imgSrc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 170,
          height: 220, // Adjust height based on your image aspect ratio
          child: Image.network(
            this.imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            width: 160,
            height: 90,
            color: Colors.white,
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  overflow: TextOverflow.ellipsis, // Handles long titles
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
