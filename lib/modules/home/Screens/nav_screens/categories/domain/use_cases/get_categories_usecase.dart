import 'package:movies_app/modules/home/Screens/nav_screens/categories/domain/repositories/categories_repo.dart';

import '../../data/models/categories_model.dart';

class GetCategoriesUseCase {

  CategoriesRepo categoriesRepo;

  GetCategoriesUseCase(this.categoriesRepo);

  Future<CategoriesModel> call()=>categoriesRepo.getCategories();
}