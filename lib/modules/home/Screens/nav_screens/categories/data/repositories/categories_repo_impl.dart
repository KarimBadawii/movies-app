
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/data_sources/categories_ds.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/categories_model.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/category_model.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/domain/repositories/categories_repo.dart';

class CategoriesRepoImpl implements CategoriesRepo{

   CategoriesDs categoriesDs;
    CategoriesRepoImpl(this.categoriesDs);

  @override
  Future<CategoriesModel> getCategories() async{
    var data = await categoriesDs.getCategories();
    return data;
  }

  @override
  Future<CategoryModel> getCategory(String categoryId) async {
    var data = await categoriesDs.getCategory(categoryId);
    return data;
  }
}