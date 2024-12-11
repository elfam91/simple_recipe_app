import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';
import 'package:simple_recipe_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: 'assets/recipe.jpg', // Make sure the image is in the assets folder and added in pubspec.yaml
        splashIconSize: 300,  // Controls the size of the splash icon
        curve: Curves.easeInBack,  // Controls the animation curve
        duration: 2000,  // Duration of the splash screen
        backgroundColor: Colors.black,  // Corrected the typo here
        animationDuration: Duration(milliseconds: 1500),  // Duration of the animation
        nextScreen: HomeScreen(),  // The screen that comes after the splash
      ),
      debugShowCheckedModeBanner: false,  // Disable the debug banner
      theme: ThemeData.dark(),  // Dark theme for the app
    );
  }
}