import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { appetizers, mainCourses, deserts, baking, drinks }

class Recipe {
  Recipe({
    required this.title,
    required this.category
  }) : id = uuid.v4();

  final String id;
  final String title;
  final Category category;

}