import 'package:flutter/material.dart';
import 'package:simple_recipe_app/dummy_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
      ),
      body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )
                ),
                elevation: 4.0,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(recipes[index].imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 250,),
                      ),
                    Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black54,
                          ),
                        )
                    ),
                  ],
                ),
              ),

            );
          }
      ),
    );
  }
}