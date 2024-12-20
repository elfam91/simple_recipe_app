import 'package:flutter/material.dart';

import 'package:simple_recipe_app/widgets/meal_type_card.dart';

import 'package:simple_recipe_app/widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: Text(
            'Food Recipe',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 24,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Good Morning,\nGrinch',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://seattlerefined.com/resources/media2/16x9/full/1024/center/80/54fb05fa-0018-4f85-b1a4-b0565f19109a-large16x9_drseussthegrinchGRC_Tsr1Sheet_GrinchAndMax_RGB_1_rgb.jpg'),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration:
                  InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                      borderRadius: BorderRadius.zero,
                    ),
                    hintText: 'Search recipe here...',
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(16.5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade200,
                    )
                ),
                child: Icon(
                  Icons.tune,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 110,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MealTypeCard(
                title: 'Breakfast',
                icon: Icons.breakfast_dining,
              ),
              MealTypeCard(
                title: 'Lunch',
                icon: Icons.lunch_dining,
              ),
              MealTypeCard(
                title: 'Dessert',
                icon: Icons.cake,
              ),
              MealTypeCard(
                title: 'Dinner',
                icon: Icons.dinner_dining,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
          child: Text(
            'Popular Recipes',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22,
            ),
          ),
        ),
        Expanded(child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            RecipeCard(
              imgSrc: 'https://www.julieseatsandtreats.com/wp-content/uploads/2020/06/Rainbow-Ice-Cream-14-of-16-1024x1536.jpg',
              title: 'Ice Cream',
              prepTime: '15 M',
              cookTime: '45 M',
            ),
            RecipeCard(
              imgSrc: 'https://www.onceuponachef.com/images/2009/08/pancakes-01-1123x1536.jpg',
              title: 'Pancakes',
              prepTime: '15 M',
              cookTime: '15 M',
            ),
            RecipeCard(
              imgSrc: 'https://brandsitesplatform-res.cloudinary.com/image/fetch/w_768,c_scale,q_auto:eco,f_auto,fl_lossy,dpr_1.0,e_sharpen:85/https://assets.brandplatform.generalmills.com%2F-%2Fmedia%2Fproject%2Fgmi%2Foldelpaso%2Foldelpaso-us%2Frecipes%2Fqtcu578og0gukdk_kb_rmg_gmi_hi_res_jpeg.jpeg%3F',
              title: 'Taco',
              prepTime: '30 M',
              cookTime: '45 M',
            ),
            RecipeCard(
              imgSrc: 'https://t4.ftcdn.net/jpg/01/16/61/93/240_F_116619399_YA611bKNOW35ffK0OiyuaOcjAgXgKBui.jpg',
              title: 'Coffee',
              prepTime: '5 M',
              cookTime: '5 M',
            ),
          ],
        ),
        ),
        SizedBox(height: 10,
        ),
      ],
    );
  }
}

