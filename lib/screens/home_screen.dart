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
                      left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                              horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                          ), 
                          child: Text(recipes[index].title,
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white
                            ),
                          ),
                        )
                    ),
                    Positioned(
                      right: 0,
                        child: Container(
                          color: Colors.white,
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Text('${recipes[index].duration} min'),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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