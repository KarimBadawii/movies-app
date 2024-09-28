

import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/category_model.dart';

import '../repositories/categories_repo.dart';

class GetCategoryUseCase {

  CategoriesRepo categoriesRepo;

  GetCategoryUseCase(this.categoriesRepo);

  Future<CategoryModel> call()=>categoriesRepo.getCategory();
}