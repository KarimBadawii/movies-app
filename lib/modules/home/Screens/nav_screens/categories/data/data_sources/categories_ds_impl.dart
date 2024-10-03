import 'package:dio/dio.dart';
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/core/api/endpoints.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/data_sources/categories_ds.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/categories_model.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/category_model.dart';

class CategoriesDSImpl implements CategoriesDs{

  ApiManager apiManager;

  CategoriesDSImpl(this.apiManager);

  @override
  Future<CategoriesModel> getCategories() async{
    Response response = await apiManager.getCategories(endPoint: EndPoints.categories);
    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }

  @override
  Future<CategoryModel> getCategory(String categoryId) async{
    Response response = await apiManager.getCategory(endPoint: EndPoints.category, categoryId: categoryId);
    CategoryModel categoryModel = CategoryModel.fromJson(response.data);
    return categoryModel;
  }
}