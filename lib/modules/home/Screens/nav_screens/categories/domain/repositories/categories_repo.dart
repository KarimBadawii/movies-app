
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/categories_model.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/category_model.dart';

abstract class CategoriesRepo{

  Future<CategoriesModel> getCategories();

  Future<CategoryModel> getCategory();
}